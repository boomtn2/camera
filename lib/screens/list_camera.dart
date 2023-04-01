import 'package:camera_da/controllers/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../font_text.dart';
import 'edit/add_camera.dart';

class ListCamera extends StatefulWidget {
  const ListCamera({super.key});

  @override
  State<ListCamera> createState() => _ListCameraState();
}

class _ListCameraState extends State<ListCamera> {
  @override
  Widget build(BuildContext context) {
    return GetX<ControllerCamera>(
        builder: (controller) => ListView(
              children: controller.listCamera
                  .map((element) => Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => EditCamera(
                                    camera: element,
                                  ));
                            },
                            child: Card(
                              color: Color.fromARGB(165, 168, 163, 147),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      element.name,
                                      style: textStyteList,
                                    ),
                                    Text(element.brand, style: textStyteList),
                                    Text(element.cameraAddress,
                                        style: textStyteList),
                                    Text(element.model, style: textStyteList),
                                    Text(element.port, style: textStyteList),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              color: Colors.red,
                              onPressed: () {
                                controller.delete(element);
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ))
                  .toList(),
            ));
  }
}
