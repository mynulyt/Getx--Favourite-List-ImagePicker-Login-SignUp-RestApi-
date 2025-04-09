import 'package:fav_list/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if (controller.tempFruitList.contains(
                  controller.fruitList[index].toString(),
                )) {
                  controller.removeFavourite(
                    controller.fruitList[index].toString(),
                  );
                } else {
                  controller.addFavourite(
                    controller.fruitList[index].toString(),
                  );
                }
              },
              title: Text(index.toString()),
              subtitle: Text(controller.fruitList[index].toString()),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color:
                      controller.tempFruitList.contains(
                            controller.fruitList[index].toString(),
                          )
                          ? Colors.red
                          : Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
