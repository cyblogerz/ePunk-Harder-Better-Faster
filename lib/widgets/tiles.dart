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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withAlpha(60),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(
              0.0,
              3.0,
            ),
          ),
          BoxShadow(
            color: color.withAlpha(60),
            blurRadius: 6.0,
            spreadRadius: 1.0,
            offset: Offset(
              0.0,
              3.0,
            ),
          ),
          BoxShadow(
            color: color.withAlpha(60),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(
              0.0,
              3.0,
            ),
          )
        ],
      ),
      child: ElevatedButton(
          child: Center(child: Text(title)),
          onPressed: () async {
            var duration =
                await player.setAsset('assets/keySounds/$mId$pid.mp3');
            player.play();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      width: 4,
                      color: color,
                    ))),
          )),
    );
  }
}
