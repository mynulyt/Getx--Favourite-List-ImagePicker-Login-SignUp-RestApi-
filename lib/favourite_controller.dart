import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitList =
      [
        'Orange',
        'Apple',
        'Banana',
        'Mango',
        'Lemon',
        'Watermelon',
        'Pineapple',
        'Graphs',
        'Guava',
        'papaya',
      ].obs;
  RxList tempFruitList = [].obs;

  addFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFavourite(String value) {
    tempFruitList.remove(value);
  }
}
