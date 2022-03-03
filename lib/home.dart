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
                ),
                Tile(
                  title: "Make It",
                  color: Colors.redAccent,
                ),
                Tile(
                  title: "Do It",
                  color: Colors.purple,
                ),
                Tile(
                  title: "Makes Us",
                  color: Colors.purpleAccent,
                ),
                Tile(
                  title: "Harder",
                  color: Colors.blue,
                ),
                Tile(
                  title: "Better",
                  color: Colors.blueAccent,
                ),
                Tile(
                  title: "Work It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Make It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Work It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Make It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Work It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Make It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Work It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Make It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Work It",
                  color: Colors.red,
                ),
                Tile(
                  title: "Make It",
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
