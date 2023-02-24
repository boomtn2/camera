import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_camera/add_camera.dart';
import 'search_bar.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarState();
}

class _AppBarState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        child: Column(
          children: [
            SearchInput(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                ),
                const Text(""),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.view_agenda,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => ScreenAddCamre());
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
