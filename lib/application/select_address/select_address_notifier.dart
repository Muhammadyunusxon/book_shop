import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:osm_nominatim/osm_nominatim.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';
import '../../infrastructure/service/app_constants.dart';
import 'select_address_state.dart';

class SelectAddressNotifier extends StateNotifier<SelectAddressState> {
  Timer? _timer;
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  SelectAddressNotifier()
      : super(SelectAddressState(textController: TextEditingController()));

  void setQuery(BuildContext context) {
    if (state.textController?.text.trim().isNotEmpty ?? false) {
      if (_timer?.isActive ?? false) {
        _timer?.cancel();
      }
      _timer = Timer(
        const Duration(milliseconds: 500),
        () {
          searchLocations();
        },
      );
    }
  }

  Future<void> searchLocations() async {
    debugPrint("searchLocations");
    state = state.copyWith(isSearching: true, isSearchLoading: true);
    try {
      final result = await Nominatim.searchByName(
        query: state.textController?.text.trim() ?? '',
        limit: 3,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );
      state = state.copyWith(searchedPlaces: result, isSearchLoading: false);
    } catch (e) {
      debugPrint('===> search location error $e');
      state = state.copyWith(isSearchLoading: false);
    }
  }

  void clearSearchField() {
    state.textController?.clear();
    state = state.copyWith(searchedPlaces: [], isSearching: false);
  }

  void setMapController(GoogleMapController controller) {
    state = state.copyWith(mapController: controller);
  }

  void setChoosing(bool value) {
    state = state.copyWith(isChoosing: value, isSearching: false);
  }

  void goToLocation({required Place place}) {
    debugPrint("goToLocation");

    state = state.copyWith(isSearching: false);
    state.textController?.text = place.displayName;
    state.mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          bearing: 0,
          target: LatLng(place.lat, place.lon),
          tilt: 0,
          zoom: 17,
        ),
      ),
    );
    state = state.copyWith(
      location: LocationData(
          lat: place.lat, lon: place.lon, title: place.displayName),
    );
  }

  Future<void> gotToPlace(LocationData? location) async {
    debugPrint("gotToPlace");
    state = state.copyWith(searchedPlaces: [], isSearching: false);
    Place? place;
    try {
      place = await Nominatim.reverseSearch(
        lat: location?.lat ?? AppConstants.demoLatitude,
        lon: location?.lon ?? AppConstants.demoLongitude,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );
      state.textController?.text = place.displayName;
    } catch (e) {
      debugPrint('===> go to my location error: $e');
      state.textController?.clear();
    }
    if (place != null) {
      state.mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            bearing: 0,
            target: LatLng(place.lat, place.lon),
            tilt: 0,
            zoom: 17,
          ),
        ),
      );
      state = state.copyWith(
        location: LocationData(
            lat: place.lat, lon: place.lon, title: place.displayName),
      );
    }
  }

  Future<void> goToMyLocation() async {
    debugPrint("goToMyLocation");
    var check = await _geolocatorPlatform.checkPermission();
    dynamic latLng;
    if (check == LocationPermission.denied ||
        check == LocationPermission.deniedForever) {
      check = await Geolocator.requestPermission();
      if (check != LocationPermission.denied &&
          check != LocationPermission.deniedForever) {
        var loc = await Geolocator.getCurrentPosition();
        latLng = LatLng(loc.latitude, loc.longitude);
        state.mapController!
            .animateCamera(CameraUpdate.newLatLngZoom(latLng, 15));
      }
    } else {
      if (check != LocationPermission.deniedForever) {
        var loc = await Geolocator.getCurrentPosition();
        latLng = LatLng(loc.latitude, loc.longitude);
        state.mapController!
            .animateCamera(CameraUpdate.newLatLngZoom(latLng, 15));
      }
    }
    state = state.copyWith(searchedPlaces: [], isSearching: false);
    Place? place;
    try {
      place = await Nominatim.reverseSearch(
        lat: latLng.latitude,
        lon: latLng.longitude,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );
      state.textController?.text = place.displayName;
    } catch (e) {
      debugPrint('===> go to my location error: $e');
      state.textController?.text = '';
    }
    if (place != null) {
      state.mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            bearing: 0,
            target: LatLng(place.lat, place.lon),
            tilt: 0,
            zoom: 17,
          ),
        ),
      );
      state = state.copyWith(
        location: LocationData(
            lat: place.lat, lon: place.lon, title: place.displayName),
      );
    }
  }

  Future<void> saveLocalAddress(VoidCallback onSave) async {
    List<LocationData> list = LocalStorage.getUser()?.location ?? [];
    list.add(state.location!);
    await LocalStorage.setUser(
        LocalStorage.getUser()?.copyWith(location: list) ?? UserData());
    onSave();
    clearSearchField();
    state.mapController?.dispose();
  }

  Future<void> fetchLocationName(LatLng? latLng) async {
    debugPrint("fetchLocationName");
    Place? place;
    try {
      place = await Nominatim.reverseSearch(
        lat: latLng?.latitude,
        lon: latLng?.longitude,
        addressDetails: true,
        extraTags: true,
        nameDetails: true,
      );
      state.textController?.text = place.displayName;
      state = state.copyWith(
        location: LocationData(
            lat: latLng?.latitude ?? AppConstants.demoLatitude,
            lon: latLng?.longitude ?? AppConstants.demoLongitude,
            title: place.displayName),
      );
    } catch (e) {
      state.textController?.text = '';
    }
  }
}
