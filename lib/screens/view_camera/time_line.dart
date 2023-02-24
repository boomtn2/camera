import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timelines/timelines.dart';

import '../../path_img.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.reverse,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('$index:00:00'),
        ),
        oppositeContentsBuilder: (context, index) => Container(
          height: 120,
          width: MediaQuery.of(context).size.width / 2,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgCameraNull), fit: BoxFit.fill)),
        ),
        itemCount: 10,
      ),
    );
  }
}
