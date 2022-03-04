import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

class Tile extends StatelessWidget {
  final String title;
  final Color color;
  final String mId;
  const Tile({
    Key? key,
    required this.title,
    required this.color,
    required this.mId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Center(child: Text(title)),
        onPressed: () async {
          var duration = await player.setAsset('assets/keySounds/after.mp3');
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
