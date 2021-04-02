import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatelessWidget {
  final String videoUrl;
  final List<String> paragraph;
  VideoPlayer(this.videoUrl,this.paragraph);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text('Video')
      ),
      body: Container(
        child: Column(
          children: [
            YoutubePlayer(
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
            Container(
              height: 400.0,
              margin: EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: paragraph.length,
                itemBuilder: (context, index) {
                  return Text(paragraph[index],style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ListView.builder(
// itemCount: paragraph.length,
// itemBuilder: (context, index) {
// return Text(paragraph[index]);
// },
// )