import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../infrastructure/local_storage/g_grocery_storage.dart';
import '../../infrastructure/models/models.dart';
import 'chat_state.dart';

class ChatNotifier extends StateNotifier<ChatState> {
  ChatNotifier() : super(const ChatState());
  final ImagePicker _image = ImagePicker();

  getMessage(List<ShopData> shops) {
    List<MessageData> messages = LocalStorage.getMessage(shops);
    state = state.copyWith(messages: messages);
  }

  selectShop(ShopData? shopData) {
    state = state.copyWith(selectShop: shopData);
    List<MessageData> messages = List.from(state.messages);
    state = state.copyWith(chats: [], image: "");
    for (int i = 0; i < messages.length; i++) {
      if (messages[i].shopId == state.selectShop?.id) {
        state = state.copyWith(chats: messages[i].chats ?? []);
      }
    }
  }

  addMessage(ChatData chat) {
    List<MessageData> messages = List.from(state.messages);
    List<ChatData> chats = [];
    int index = -1;
    for (int i = 0; i < messages.length; i++) {
      if (messages[i].shopId == state.selectShop?.id) {
        chats = messages[i].chats ?? [];
        index = i;
      }
    }
    chats.insert(0, chat);
    if (index != -1) {
      messages[index] = messages[index].copyWith(chats: chats);
    } else {
      messages.add(
        MessageData(
            chats: chats, shopId: state.selectShop?.id, shop: state.selectShop),
      );
    }
    LocalStorage.setMessage(messages);

    state = state.copyWith(messages: messages, chats: chats);
  }

  getImageGallery() {
    _image.pickImage(source: ImageSource.gallery).then((value) async {
      if (value != null) {
        CroppedFile? cropperImage =
            await ImageCropper().cropImage(sourcePath: value.path);
        if (cropperImage?.path.isNotEmpty ?? false) {
          addMessage(ChatData(
            date: DateTime.now(),
            img: cropperImage!.path,
            isUser: true,
          ));
        }
      }
    });
  }

  getImageCamera() {
    _image.pickImage(source: ImageSource.camera).then((value) async {
      if (value != null) {
        CroppedFile? cropperImage =
            await ImageCropper().cropImage(sourcePath: value.path);
        if (cropperImage?.path.isNotEmpty ?? false) {
          addMessage(ChatData(
            date: DateTime.now(),
            img: cropperImage!.path,
            isUser: true,
          ));
        }
      }
    });
  }
}
