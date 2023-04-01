import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../path_img.dart';

class VideoApp extends StatefulWidget {
  final bool isNetWork;
  final String path;
  final bool isPlay;

  const VideoApp(
      {super.key,
      required this.isNetWork,
      required this.path,
      required this.isPlay});
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    try {
      _controller = widget.isNetWork
          ? VideoPlayerController.network(widget.path)
          : VideoPlayerController.asset(widget.path)
        ..setLooping(true)
        ..initialize().then((_) {
          widget.isPlay ? _controller.play() : _controller.pause();
          setState(() {});
        });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: _controller.value.isInitialized
          ? Padding(
              padding: const EdgeInsets.all(2.0),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
          : Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                imgCameraNull,
                fit: BoxFit.fill,
              ),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
