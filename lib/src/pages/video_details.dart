import 'package:flutter/material.dart';
import 'package:todo_stream_video/src/widgets/video.dart';

class VideoDetalsPage extends StatefulWidget {
  @override
  _VideoDetalsPageState createState() => _VideoDetalsPageState();
}

class _VideoDetalsPageState extends State<VideoDetalsPage> {
  appBarCustom() => AppBar(
      leading: BackButton(color: Colors.white),
      elevation: 0,
      actions: <Widget>[],
      title: Text("Video Settings", style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.transparent);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRect(
                        child: Container(
                            width: _width,
                            height: _height / 3,
                            child: VideoPlayerScreen())),
                    Container(height: _height / 10, child: appBarCustom())
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
