import 'package:camera_da/path_img.dart';
import 'package:get/get.dart';

import '../models/time_line.dart';

class ControllerCamera extends GetxController {
  var timeLine = <Timeline>[].obs;

  void getData() {
    List<Timeline> time_line = [
      Timeline(time: "3:06", img: [imgCameraNull]),
      Timeline(time: "4:06", img: [imgCameraNull]),
      Timeline(time: "6:06", img: [imgCameraNull]),
      Timeline(time: "7:06", img: [imgCameraNull]),
    ];
    timeLine.value = time_line;
  }
}
