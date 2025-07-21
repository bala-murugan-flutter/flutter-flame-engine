import 'package:get/get.dart';

class RoomController extends GetxController {
  // Example reactive value (for future enhancement like selected game)
  var selectedGame = ''.obs;

  void selectGame(String gameName) {
    selectedGame.value = gameName;
    // You can handle navigation or state updates here
    print('Selected game: $gameName');
  }
}
