// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:camera_da/models/time_line.dart';
import 'package:camera_da/screens/view_camera/time_line.dart';

class Camera {
  String name;
  String brand;
  String model;
  String cameraAddress;
  String port;

  List<TimelineModel> listTimeLine;

  Camera({
    required this.name,
    required this.brand,
    required this.model,
    required this.cameraAddress,
    required this.port,
    required this.listTimeLine,
  });
}
