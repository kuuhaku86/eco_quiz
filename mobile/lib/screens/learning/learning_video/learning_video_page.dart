import 'package:eco_quiz/screens/learning/end_of_learning/end_of_learning_page.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LearningVideoPage extends StatefulWidget {
  const LearningVideoPage({super.key});
  static final String route = "/learning_video_page";

  @override
  _LearningVideoPageState createState() => _LearningVideoPageState();
}

class _LearningVideoPageState extends State<LearningVideoPage> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    setState(() {
      _videoController =
          VideoPlayerController.asset(listVideo[currentCourse][currentVideo]);
      _videoController.initialize();
      _videoController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: mediaQuerySize.width / (0.9 * mediaQuerySize.height),
            child: VideoPlayer(_videoController),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              currentVideo > 0
                  ? GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 0.1 * mediaQuerySize.height,
                      ),
                      onTap: () {
                        currentVideo--;
                        _videoController.pause();
                        Navigator.of(context)
                            .popAndPushNamed(LearningVideoPage.route);
                      },
                    )
                  : Container(width: 0.1 * mediaQuerySize.height),
              GestureDetector(
                child: Icon(
                  _videoController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                  size: 0.1 * mediaQuerySize.height,
                ),
                onTap: () {
                  setState(() {
                    _videoController.value.isPlaying
                        ? _videoController.pause()
                        : _videoController.play();
                  });
                },
              ),
              GestureDetector(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 0.1 * mediaQuerySize.height,
                ),
                onTap: () {
                  if (currentVideo == (listVideo[currentCourse].length - 1)) {
                    _videoController.pause();
                    Navigator.of(context)
                        .popAndPushNamed(EndOfLearningPage.route);
                  } else {
                    currentVideo++;
                    _videoController.pause();
                    Navigator.of(context)
                        .popAndPushNamed(LearningVideoPage.route);
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoController.pause();
    super.dispose();
    _videoController.dispose();
  }
}
