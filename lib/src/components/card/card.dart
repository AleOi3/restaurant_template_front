import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardStyle {
  double? cardHeight;
  double? cardWidth;
  double? rightContainerHeight;
  double? rightContainerWidth;
  double? leftContainerHeight;
  double? leftContainerWidth;

  CardStyle({
    double? imageHeight = 100,
    double? imageWidth = 100,
    double? cardHeight = 200,
    double? cardWidth = 200,
    double? rightContainerHeight = 150,
    double? rightContainerWidth = 150,
    double? leftContainerHeight = 100,
    double? leftContainerWidth = 100,
  }) {
    this.cardHeight = cardHeight;
    this.cardWidth = cardWidth;
    this.rightContainerHeight = rightContainerHeight;
    this.rightContainerWidth = rightContainerWidth;
    this.leftContainerHeight = leftContainerHeight;
    this.leftContainerWidth = leftContainerWidth;
  }
}

class CardComponent extends StatelessWidget {
  final String? image;
  final String? price;
  final String? name;
  CardStyle? style;
  final List<Widget> rightList;
  final List<Widget> leftList;

  CardComponent(
      {
        Key? key,
        this.image,
        this.price,
        this.name,
        this.style,
        required this.rightList,
        required this.leftList
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.style == null) this.style = CardStyle();

    return Container(
        height: style?.cardHeight ?? 200,
        width: style?.cardWidth ?? 200,
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Container(
                height: style?.leftContainerHeight ?? 100,
                width: style?.leftContainerWidth ?? 100,
                child: Column(
                  children: this.leftList,
                ),
              ),
              Container(
                decoration:BoxDecoration(border: Border.all(color: Colors.blue)),
                height: style?.rightContainerHeight ?? 100,
                width: style?.rightContainerWidth ?? 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: this.rightList,
                ),
              )
            ],
          )
        ]));
  }
}
