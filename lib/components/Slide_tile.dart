import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String image;
  final bool activePage;

  const SlideTile({Key key, this.image, this.activePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double top = this.activePage ? 1 : 50;
    final double bottom = this.activePage ? 50 : 100;

    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.only(top: top, bottom: bottom),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.fitWidth,
        )));
  }
}
