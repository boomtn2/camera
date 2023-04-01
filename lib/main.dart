import 'package:camera_da/controllers/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/feed_video.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var _controller = Get.put(ControllerCamera());
  @override
  Widget build(BuildContext context) {
    _controller.getData();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenLogin(),
    );
  }
}
