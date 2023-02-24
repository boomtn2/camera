import 'package:camera_da/screens/view_camera/view_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../font_text.dart';
import '../../path_img.dart';

class ItemCamera extends StatelessWidget {
  const ItemCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const ScreenViewCamera());
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
                "Vườn",
                style: textStyte_NameCamera,
              ),
            ],
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imgCameraNull), fit: BoxFit.fill)),
            child: Column(
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
                            "C6N(F70357917)",
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
          ),
        ],
      ),
    );
  }
}
