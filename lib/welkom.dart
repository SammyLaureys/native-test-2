import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WelkomList extends StatefulWidget {
  @override
  WelkomState createState() => WelkomState();
}

class WelkomState extends State<WelkomList> {
  static VideoPlayerController videoController = VideoPlayerController.asset("assets/video/intro.mp4");
  bool isSelected = false;

  Color getColor () {
    var color = Colors.white;
    if(isSelected == true){
      color = Colors.blue;
    }
    else{
      color = Colors.white;
    }
    return color;
  }

  Widget build(BuildContext context) {
    videoController
      ..initialize()
      ..play();
    return Stack(
      children: <Widget>[
        // Max Size
        Container(
          child: VideoPlayer(videoController)
        ),
        Visibility(
          child:
          Positioned(
          right: 150.0,
          top: 240.0,
          child: Container(
            width: 90,
            height: 220,
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  child: Container(
                    child: new Text("ALL"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: getColor(),
                    ),
                  ),
                ),
                GestureDetector(child:
                Container(
                  child: new Text("ICT"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
                ),
                GestureDetector(child:
                Container(
                  child: new Text("HISTORY"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
                ),
                GestureDetector(child:
                Container(
                  child: new Text("REVOLUTION"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
        ),
      ],
    );
  }
}