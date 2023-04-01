import 'package:camera_da/models/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timelines/timelines.dart';

import '../../models/time_line.dart';
import '../../path_img.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key, required this.timelineModel});
  final List<TimelineModel> timelineModel;
  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.reverse,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('${timelineModel[index].time}'),
        ),
        oppositeContentsBuilder: (context, index) => Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("${timelineModel[index].img[0]}"),
                  fit: BoxFit.fill)),
        ),
        itemCount: timelineModel.length,
      ),
    );
  }
}
