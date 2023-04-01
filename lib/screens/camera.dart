import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
  // late VideoPlayerController _controller;
  late WebViewController _controller;
  @override
  void initState() {
    super.initState();
    // try {
    //   _controller = widget.isNetWork
    //       ? VideoPlayerController.network(widget.path)
    //       : VideoPlayerController.asset(widget.path)
    //     ..setLooping(true)
    //     ..initialize().then((_) {
    //       widget.isPlay ? _controller.play() : _controller.pause();
    //       setState(() {});
    //     });
    // } catch (e) {
    //   print(e);
    // }
  }

  @override
  Widget build(BuildContext context) {
    print(widget.path);
    return Stack(
      children: [
        Card(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: WebView(
              initialUrl: widget.path,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller = webViewController;
              },
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(0, 0, 0, 0),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.evaluateJavascript('window.close();');
  }
}
