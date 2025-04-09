import 'package:eco_quiz/screens/learning/end_of_learning/end_of_learning_page.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:eco_quiz/widgets/app_bar.dart';
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
  bool isStart = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      _videoController = VideoPlayerController.asset(
        listVideos[currentCourse][currentVideo],
      );
      _videoController.initialize();
      _videoController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar:
          appBar(context, "Video " + (currentVideo + 1).toString(), true)
              as PreferredSizeWidget,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: mediaQuerySize.width / (0.3 * mediaQuerySize.height),
            child: VideoPlayer(_videoController),
          ),
          Container(height: mediaQuerySize.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:
                    currentVideo > 0
                        ? GestureDetector(
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 0.05 * mediaQuerySize.height,
                          ),
                          onTap: () {
                            currentVideo--;
                            _videoController.pause();
                            Navigator.of(
                              context,
                            ).popAndPushNamed(LearningVideoPage.route);
                          },
                        )
                        : Container(width: 0.1 * mediaQuerySize.height),
              ),
              Expanded(
                child: GestureDetector(
                  child: Icon(
                    _videoController.value.isPlaying || isStart
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: 0.05 * mediaQuerySize.height,
                  ),
                  onTap: () {
                    setState(() {
                      isStart = false;
                      _videoController.value.isPlaying
                          ? _videoController.pause()
                          : _videoController.play();
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.05 * mediaQuerySize.height,
                  ),
                  onTap: () {
                    if (currentVideo ==
                        (listVideos[currentCourse].length - 1)) {
                      _videoController.pause();
                      Navigator.of(
                        context,
                      ).popAndPushNamed(EndOfLearningPage.route);
                    } else {
                      currentVideo++;
                      _videoController.pause();
                      Navigator.of(
                        context,
                      ).popAndPushNamed(LearningVideoPage.route);
                    }
                  },
                ),
              ),
            ],
          ),
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
