import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'home.dart';

bool isPlaying = false;
String pId = "1";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

late AudioPlayer player1;
late AudioPlayer player2;
late AudioPlayer player3;
late AudioPlayer player4;
late AudioPlayer player5;
late AudioPlayer player6;
late AudioPlayer player7;
late AudioPlayer player8;
late AudioPlayer player9;
late AudioPlayer player10;
late AudioPlayer player11;
late AudioPlayer player12;
late AudioPlayer player13;
late AudioPlayer player14;
late AudioPlayer player15;
late AudioPlayer player16;

class _MyAppState extends State<MyApp> {
  void setPlayState() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void buttonPressed(double bid) {
    setState(() {
      pId = bid.round().toString();
    });
  }

  //Create initState and dispose
  @override
  void initState() {
    // TODO: implement initState
    player1 = AudioPlayer();
    player2 = AudioPlayer();
    player3 = AudioPlayer();
    player4 = AudioPlayer();
    player5 = AudioPlayer();
    player6 = AudioPlayer();
    player7 = AudioPlayer();
    player8 = AudioPlayer();
    player9 = AudioPlayer();
    player10 = AudioPlayer();
    player11 = AudioPlayer();
    player12 = AudioPlayer();
    player13 = AudioPlayer();
    player14 = AudioPlayer();
    player15 = AudioPlayer();
    player16 = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player1.dispose();
    player2.dispose();
    player3.dispose();
    player4.dispose();
    player5.dispose();
    player6.dispose();
    player7.dispose();
    player8.dispose();
    player9.dispose();
    player10.dispose();
    player11.dispose();
    player12.dispose();
    player13.dispose();
    player14.dispose();
    player15.dispose();
    player16.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Home(
        pid: pId,
        buttonPress: buttonPressed,
        isplaying: isPlaying,
        playCheck: setPlayState,
        player1: player1,
        player2: player2,
        player3: player3,
        player4: player4,
        //upto 16 players
        player5: player5,
        player6: player6,
        player7: player7,
        player8: player8,
        player9: player9,
        player10: player10,
        player11: player11,
        player12: player12,
        player13: player13,
        player14: player14,
        player15: player15,
        player16: player16,
      ),
    );
  }
}
