import 'package:camera_da/models/camera.dart';
import 'package:camera_da/path_img.dart';
import 'package:camera_da/screens/camera.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../font_text.dart';
import 'time_line.dart';

class ScreenViewCamera extends StatefulWidget {
  const ScreenViewCamera({Key? key, required this.camera});
  final Camera camera;
  @override
  State<ScreenViewCamera> createState() => _ScreenViewCameraState();
}

class _ScreenViewCameraState extends State<ScreenViewCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.camera.model}"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: VideoApp(isNetWork: false, path: "", isPlay: true),
          ),
          const ListTile(
            leading: Icon(Icons.arrow_circle_left),
            title: Text(
              "Ngày hôm qua",
              style: textStyteTitle,
            ),
            trailing: Icon(Icons.arrow_circle_right),
          ),
          Expanded(
            child: TimeLine(timelineModel: widget.camera.listTimeLine),
          )
        ],
      ),
    );
  }
}
