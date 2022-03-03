import 'package:flutter/material.dart';

import 'widgets/tiles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var topPad = size.height * 0.1;

    /*24 is for notification bar on Android*/
    final double itemHeight = size.height * 0.08;
    final double itemWidth = (size.width / 2);
    return Scaffold(
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
                  title: "Work It",
                  color: Colors.red,
                  mId: "work-it",
                ),
                Tile(
                  title: "Make It",
                  color: Colors.redAccent,
                  mId: "make-it",
                ),
                Tile(
                  title: "Do It",
                  color: Colors.purple,
                  mId: "do-it",
                ),
                Tile(
                  title: "Makes Us",
                  color: Colors.purpleAccent,
                  mId: "makes-us",
                ),
                Tile(
                  title: "Harder",
                  color: Colors.blue,
                  mId: "harder",
                ),
                Tile(
                  title: "Better",
                  color: Colors.blueAccent,
                  mId: "better",
                ),
                Tile(
                  title: "Faster",
                  color: Colors.cyan,
                  mId: "faster",
                ),
                Tile(
                  title: "Stronger",
                  color: Colors.cyanAccent,
                  mId: "stronger",
                ),
                Tile(
                  title: "More than",
                  color: Colors.green,
                  mId: "more-than",
                ),
                Tile(
                  title: "Hour",
                  color: Colors.greenAccent,
                  mId: "hour",
                ),
                Tile(
                  title: "Our",
                  color: Colors.yellow,
                  mId: "our",
                ),
                Tile(
                  title: "Never",
                  color: Colors.yellowAccent,
                  mId: "never",
                ),
                Tile(
                  title: "Ever",
                  color: Colors.orange,
                  mId: "ever",
                ),
                Tile(
                  title: "After",
                  color: Colors.orangeAccent,
                  mId: "after",
                ),
                Tile(
                  title: "Work Is",
                  color: Colors.red,
                  mId: "work-is",
                ),
                Tile(
                  title: "Over",
                  color: Colors.red,
                  mId: "over",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
