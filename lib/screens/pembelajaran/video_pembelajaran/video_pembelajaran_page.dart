import 'package:eco_quiz/util/size.dart';
import 'package:eco_quiz/util/video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPembelajaranPage extends StatefulWidget {
  const VideoPembelajaranPage({Key key}) : super(key: key);

  @override
  _VideoPembelajaranPageState createState() => _VideoPembelajaranPageState();
}

class _VideoPembelajaranPageState extends State<VideoPembelajaranPage> {
  VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    setState(() {
      _videoController = VideoPlayerController.asset(listVideo[currentCourse][currentVideo]);
      _videoController.initialize();
      _videoController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            AspectRatio(
              aspectRatio: width/(0.9*height),
              child: VideoPlayer(_videoController),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                currentVideo != 0 ? GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 0.1*height,
                  ),
                  onTap: () {
                    currentVideo--;
                    Navigator.of(context).popAndPushNamed("/video_pembelajaran");
                  },
                ) : Container(
                  width: 0.1*height,
                ),
                GestureDetector(
                  child: Icon(_videoController.value.isPlaying ? 
                    Icons.pause : 
                    Icons.play_arrow,
                  size: 0.1*height,
                  ),
                  onTap: () {
                    setState(() {
                      _videoController.value.isPlaying ? _videoController.pause() : _videoController.play();
                    });
                  },
                ),GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.1*height,
                  ),
                  onTap: () {
                    if(currentVideo == (listVideo[currentCourse].length - 1)) {
                      Navigator.of(context).popAndPushNamed("/akhir_pembelajaran");
                    } else {
                      currentVideo++;
                      Navigator.of(context).popAndPushNamed("/video_pembelajaran");
                    }
                  },
                ),
              ],
            )
        ],
      ),
    );
  }
}