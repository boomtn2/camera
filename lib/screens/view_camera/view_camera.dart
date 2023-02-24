import 'package:camera_da/path_img.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../../font_text.dart';
import 'time_line.dart';

class ScreenViewCamera extends StatefulWidget {
  const ScreenViewCamera({super.key});

  @override
  State<ScreenViewCamera> createState() => _ScreenViewCameraState();
}

class _ScreenViewCameraState extends State<ScreenViewCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C6N(F70357917)"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              imgCameraNull,
              fit: BoxFit.fill,
            ),
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
            child: TimeLine(),
          )
        ],
      ),
    );
  }
}
