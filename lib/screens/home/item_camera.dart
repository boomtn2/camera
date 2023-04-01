import 'package:camera_da/models/camera.dart';
import 'package:camera_da/screens/view_camera/view_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../font_text.dart';
import '../../path_img.dart';
import '../camera.dart';

class ItemCamera extends StatelessWidget {
  const ItemCamera({super.key, required this.camera});
  final Camera camera;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ScreenViewCamera(camera: camera));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "${camera.name}",
                style: textStyte_NameCamera,
              ),
            ],
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: VideoApp(
                    isNetWork: false,
                    isPlay: false,
                    path: camera.port,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      title: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.orange,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Đang bật báo động",
                                style: textStyte_StatusCamera,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "${camera.model}",
                                style: textStyte_StatusCamera,
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
