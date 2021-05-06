import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String image;
  final bool activePage;

  const SlideTile({Key key, this.image, this.activePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final double top = this.activePage ? 20 : 50;
    //final double bottom = this.activePage ? 1 : 50;
    final double right = this.activePage ? 25 : 40;
    final double left = this.activePage ? 25 : 40;

    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.only(right: right, left: left),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(this.image),
          fit: BoxFit.fitWidth,
        )));
  }
}
