import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'ThemeDecider.dart';
import 'global.dart' as global;

class VideoPlayer extends StatelessWidget {
  final String videoUrl;
  final List<String> paragraph;
  String title;
  VideoPlayer(this.videoUrl,this.paragraph,this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeDecider.decide()=='red' ? Colors.red[300] : Colors.green[300],
        title: Text(title)
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
                  return Column(
                    children: [
                      Text(paragraph[index],style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20.0)
                    ],
                  );
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