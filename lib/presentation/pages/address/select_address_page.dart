import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:book_shop/presentation/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../application/select_address/select_address_provider.dart';
import '../../../infrastructure/service/app_constants.dart';
import '../../../infrastructure/models/models.dart';
import '../../components/components.dart';
import '../../styles/style.dart';
import 'widgets/address_bottom_bar.dart';

class SelectAddressPage extends StatefulWidget {
  final LocationData? location;
  final VoidCallback onSave;

  const SelectAddressPage({Key? key, this.location, required this.onSave})
      : super(key: key);

  @override
  State<SelectAddressPage> createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  CameraPosition? _cameraPosition;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Style.white,
          title: Text(
            "Set Your Location",
            style: Style.urbanistSemiBold(size: 21),
          ),
        ),
        body: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(selectAddressProvider);
            final event = ref.read(selectAddressProvider.notifier);
            return Stack(
              children: [
                GoogleMap(
                  tiltGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  initialCameraPosition: CameraPosition(
                    bearing: 0,
                    target: LatLng(
                      widget.location?.lat ?? AppConstants.demoLatitude,
                      widget.location?.lon ?? AppConstants.demoLongitude,
                    ),
                    tilt: 0,
                    zoom: 17,
                  ),
                  onMapCreated: (controller) {
                    event.setMapController(controller);
                    event.gotToPlace(widget.location);
                  },
                  onCameraMoveStarted: () {
                    _animationController.repeat(
                      min: AppConstants.pinLoadingMin,
                      max: AppConstants.pinLoadingMax,
                      period: _animationController.duration! *
                          (AppConstants.pinLoadingMax -
                              AppConstants.pinLoadingMin),
                    );
                    event.setChoosing(true);
                  },
                  onCameraIdle: () {
                    event.fetchLocationName(_cameraPosition?.target);
                    _animationController.forward(
                      from: AppConstants.pinLoadingMax,
                    );
                    event.setChoosing(false);
                  },
                  onCameraMove: (cameraPosition) {
                    _cameraPosition = cameraPosition;
                  },
                ),
                IgnorePointer(
                  child: Center(
                    child: Padding(
                      padding: REdgeInsets.only(
                        bottom: 78.0,
                      ),
                      child: Lottie.asset(
                        Assets.lottiePinGreen,
                        onLoaded: (composition) {
                          _animationController.duration = composition.duration;
                        },
                        controller: _animationController,
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 150),
                  bottom: state.isChoosing ? -500.r : 0,
                  left: 0,
                  right: 0,
                  child: AddressBottomBar(widget.onSave),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
