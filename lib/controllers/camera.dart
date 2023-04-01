import 'package:camera_da/path_img.dart';
import 'package:get/get.dart';

import '../models/camera.dart';
import '../models/time_line.dart';

class ControllerCamera extends GetxController {
  var listCamera = <Camera>[].obs;

  void getData() {
    List<TimelineModel> time_line = [
      TimelineModel(time: "3:06", img: [imgCameraNull]),
      TimelineModel(time: "4:06", img: [imgCameraNull]),
      TimelineModel(time: "6:06", img: [imgCameraNull]),
      TimelineModel(time: "7:06", img: [imgCameraNull]),
    ];

    List<Camera> camera = [
      Camera(
          name: "name",
          brand: "brand",
          model: "model",
          cameraAddress: "assets/images/Butterfly-209.mp4",
          port: "assets/images/Butterfly-209.mp4",
          listTimeLine: time_line),
    ];
    listCamera.value = camera;
  }

  void add(Camera camera) {
    listCamera.add(camera);
  }
}
