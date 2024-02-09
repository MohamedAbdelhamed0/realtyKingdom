import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    // Adjusted to use VideoPlayerController.networkUrl with the updated constructor.
    _controller = VideoPlayerController.networkUrl(Uri.parse(
            'https://www.example.com/your_video.mp4') // Replace with your video URL.
        )
      ..initialize().then((_) {
        // Once the video is initialized, we're ready to play, but wait for user input.
        setState(() {});
      });
  }

  Widget _playButton() {
    return _isPlaying || !_controller.value.isInitialized
        ? const SizedBox
            .shrink() // Show nothing if video is playing or not initialized
        : Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  _controller.play();
                  _isPlaying = true;
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    const videoWidth = 300.0; // Set preferred video size here
    const videoHeight = 200.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player Demo'),
      ),
      body: Center(
        child: SizedBox(
          width: videoWidth,
          height: videoHeight,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller
                          .value.aspectRatio, // Maintain video aspect ratio.
                      child: VideoPlayer(_controller),
                    )
                  : const CircularProgressIndicator(),
              _playButton(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller
        .dispose(); // Dispose the VideoPlayerController to free up resources.
  }
}
