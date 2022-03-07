import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'widgets/tiles.dart';

class Home extends StatelessWidget {
  final Function playCheck;
  final Function buttonPress;
  final String pid;
  final bool isplaying;
  late final AudioPlayer player1;
  late final AudioPlayer player2;
  late final AudioPlayer player3;
  late final AudioPlayer player4;
  late final AudioPlayer player5;
  late final AudioPlayer player6;
  late final AudioPlayer player7;
  late final AudioPlayer player8;
  late final AudioPlayer player9;
  late final AudioPlayer player10;
  late final AudioPlayer player11;
  late final AudioPlayer player12;
  late final AudioPlayer player13;
  late final AudioPlayer player14;
  late final AudioPlayer player15;
  late final AudioPlayer player16;
  Home({
    Key? key,
    required this.isplaying,
    required this.playCheck,
    required this.player1,
    required this.player2,
    required this.player3,
    required this.player4,
    required this.player5,
    required this.player6,
    required this.player7,
    required this.player8,
    required this.player9,
    required this.player10,
    required this.player11,
    required this.player12,
    required this.player13,
    required this.player14,
    required this.player15,
    required this.player16,
    required this.buttonPress,
    required this.pid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var topPad = size.height * 0.05;

    /*24 is for notification bar on Android*/
    final double itemHeight = size.height * 0.08;
    final double itemWidth = (size.width / 2);
    return Scaffold(
      appBar: AppBar(
        title: Text('ePunk'),
        actions: <Widget>[
          IconButton(
              icon: isplaying ? Icon(Icons.play_arrow) : Icon(Icons.pause),
              onPressed: () {
                playCheck();
              })
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20.0, top: topPad),
            child: GridView.count(
              childAspectRatio: (itemWidth / itemHeight),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: <Widget>[
                Tile(
                  pid: pid,
                  title: "Work It",
                  color: Colors.red,
                  mId: "WorkIt",
                  player: player1,
                ),
                Tile(
                  pid: pid,
                  title: "Make It",
                  color: Colors.redAccent,
                  mId: "MakeIt",
                  player: player2,
                ),
                Tile(
                  pid: pid,
                  title: "Do It",
                  color: Colors.purple,
                  mId: "DoIt",
                  player: player3,
                ),
                Tile(
                  pid: pid,
                  title: "Makes Us",
                  color: Colors.purpleAccent,
                  player: player4,
                  mId: "MakesUs",
                ),
                Tile(
                  pid: pid,
                  title: "Harder",
                  color: Colors.blue,
                  mId: "Harder",
                  player: player5,
                ),
                Tile(
                  pid: pid,
                  title: "Better",
                  color: Colors.blueAccent,
                  mId: "Better",
                  player: player6,
                ),
                Tile(
                  pid: pid,
                  title: "Faster",
                  color: Colors.cyan,
                  mId: "Faster",
                  player: player7,
                ),
                Tile(
                  pid: pid,
                  title: "Stronger",
                  color: Colors.cyanAccent,
                  mId: "Stronger",
                  player: player8,
                ),
                Tile(
                  pid: pid,
                  title: "More than",
                  color: Colors.green,
                  mId: "MoreThan",
                  player: player9,
                ),
                Tile(
                  pid: pid,
                  title: "Hour",
                  color: Colors.greenAccent,
                  mId: "Hour",
                  player: player10,
                ),
                Tile(
                  pid: pid,
                  title: "Our",
                  color: Colors.yellow,
                  mId: "Our",
                  player: player11,
                ),
                Tile(
                  pid: pid,
                  title: "Never",
                  color: Colors.yellowAccent,
                  mId: "Never",
                  player: player12,
                ),
                Tile(
                  pid: pid,
                  title: "Ever",
                  color: Colors.orange,
                  mId: "Ever",
                  player: player13,
                ),
                Tile(
                  pid: pid,
                  title: "After",
                  color: Colors.orangeAccent,
                  mId: "After",
                  player: player14,
                ),
                Tile(
                  pid: pid,
                  title: "Work Is",
                  color: Colors.red,
                  mId: "WorkIs",
                  player: player15,
                ),
                Tile(
                  pid: pid,
                  title: "Over",
                  color: Colors.red,
                  mId: "Over",
                  player: player16,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20.0, top: topPad),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                    onPressed: () {
                      buttonPress(1);
                    },
                    child: Text('1')),
                FloatingActionButton(
                    onPressed: () {
                      buttonPress(2);
                    },
                    child: Text('2')),
                FloatingActionButton(
                    onPressed: () {
                      buttonPress(3);
                    },
                    child: Text('3')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
