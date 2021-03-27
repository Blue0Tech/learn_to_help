import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatelessWidget {
  final String videoUrl;
  VideoPlayer(this.videoUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text('Video')
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
          flags: YoutubePlayerFlags(
            hideControls: false,
            controlsVisibleAtStart: false,
            autoPlay: true,
            mute: false
          )
        ),
        showVideoProgressIndicator: true,
      ),
    );
  }
}