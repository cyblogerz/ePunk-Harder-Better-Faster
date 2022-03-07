import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Tile extends StatelessWidget {
  final String title;
  final String pid;
  final Color color;
  late final AudioPlayer player;
  final String mId;

  Tile({
    Key? key,
    required this.title,
    this.pid = '3',
    required this.player,
    required this.color,
    required this.mId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Center(child: Text(title)),
        onPressed: () async {
          var duration = await player.setAsset('assets/keySounds/$mId$pid.mp3');
          player.play();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(
                    color: color,
                  ))),
        ));
  }
}
