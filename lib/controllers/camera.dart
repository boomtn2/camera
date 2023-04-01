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
          cameraAddress: "http://homevip.vanhoang.vn:5000/",
          port: "",
          listTimeLine: time_line),
    ];
    listCamera.value = camera;
  }

  void add(Camera camera) {
    listCamera.add(camera);
  }

  bool edit(Camera camera, Camera edit) {
    for (var i = 0; i < listCamera.length; i++) {
      if (camera == listCamera[i]) {
        listCamera[i] = edit;
        return true;
      }
    }
    return false;
  }

  bool delete(Camera camera) {
    for (var i = 0; i < listCamera.length; i++) {
      if (camera == listCamera[i]) {
        listCamera.removeAt(i);
        return true;
      }
    }
    return false;
  }
}
