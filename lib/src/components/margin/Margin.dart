import 'package:flutter/widgets.dart';

class Margin extends StatelessWidget {
  final double? top, bottom, left, right;
  Margin({Key? key, this.top, this.bottom, this.left, this.right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: this.top?? 0,
        bottom: this.bottom?? 0,
        left: this.left?? 0,
        right: this.right?? 0,
      ),
    );
  }
}