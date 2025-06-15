import 'dart:io';

import 'package:fav_list/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagepickerController controller = Get.put(ImagepickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker')),
      //obx using for getx others does not work it
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    controller.imagePath.value.isNotEmpty
                        ? FileImage(File(controller.imagePath.value))
                        : null,
              ),
              TextButton(
                onPressed: () {
                  controller.getImage();
                },
                child: Text("Pick Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
