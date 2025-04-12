import 'package:eco_quiz/screens/learning/end_of_learning/end_of_learning_page.dart';
import 'package:eco_quiz/utils/video.dart';
import 'package:eco_quiz/utils/text.dart';
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

  @override
  void initState() {
    super.initState();
    setState(() {
      _videoController = VideoPlayerController.asset(
        listVideos[currentCourse][currentVideo],
      );
      _videoController.setLooping(true);
      _videoController.initialize();
      _videoController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar:
          appBar(context, "Video ${currentVideo + 1}", true)
              as PreferredSizeWidget,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: mediaQuerySize.width / (0.3 * mediaQuerySize.height),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayer(_videoController),
                _ControlsOverlay(controller: _videoController),
                VideoProgressIndicator(_videoController, allowScrubbing: true),
              ],
            ),
          ),
          Container(height: mediaQuerySize.height * 0.02),
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
          Container(height: mediaQuerySize.height * 0.02),
          SizedBox(
            height: mediaQuerySize.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Text(
                  style: TextStyle(fontSize: mediaQuerySize.height * 0.019),
                  listText[currentCourse],
                ),
              ),
            ),
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

class _ControlsOverlay extends StatefulWidget {
  const _ControlsOverlay({required this.controller});

  final VideoPlayerController controller;

  @override
  State<_ControlsOverlay> createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<_ControlsOverlay> {
  bool isStart = true;

  @override
  void initState() {
    super.initState();
  }

  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.controller.value.isPlaying || isStart
            ? const SizedBox.shrink()
            : const ColoredBox(
              color: Colors.black26,
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 100.0,
                  semanticLabel: 'Play',
                ),
              ),
            ),
        GestureDetector(
          onTap: () {
            setState(() {
              isStart = false;
            });
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: widget.controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              widget.controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(value: speed, child: Text('${speed}x')),
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${widget.controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}
