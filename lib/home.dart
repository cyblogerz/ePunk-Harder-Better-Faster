import 'package:flutter/material.dart';

import 'widgets/tiles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        Tile(),
        Tile(),
        Tile(),
        Tile(),
        Tile(),
        Tile(),
        Tile(),
        Tile(),
      ],
    );
  }
}
