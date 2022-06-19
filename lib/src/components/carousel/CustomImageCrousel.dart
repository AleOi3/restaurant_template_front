import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstapp/src/dummies/homePageDummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomImageCarouselStyle {
  double? width;
  double? height;

  CustomImageCarouselStyle(double? width, double? height){
    this.width = width;
    this.height = height;
  }
}

class CustomImageCarouselConfig{
  bool? autoPlay;
  bool? enlargeCenterPage;
  int? initialPage;
  void Function(int, CarouselPageChangedReason)? onPageChanged;
  double? viewportFraction;
  double? height;


  CustomImageCarouselConfig(
      bool? autoPlay, 
      bool? enlargeCenterPage,
      int? initialPage,
      Function (int, CarouselPageChangedReason)? onPageChanged,
      double? viewportFraction,
      double? height,
  ){
    this.autoPlay = autoPlay;
    this.enlargeCenterPage = enlargeCenterPage;
    this.initialPage = initialPage;
    this.onPageChanged = onPageChanged;
    this.viewportFraction = viewportFraction;
    this.height = height;
  }
  
}

class CustomImageCarousel extends StatelessWidget {
  final List<String>? imgList;
  final List<Widget>? widgetList;
  final CustomImageCarouselStyle? style;
  final CustomImageCarouselConfig? config;
  const CustomImageCarousel({Key? key, this.imgList, this.style, this.config,this.widgetList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: config?.autoPlay?? false,
        enlargeCenterPage: config?.enlargeCenterPage?? true,
        initialPage: config?.initialPage ?? 0,
        onPageChanged: config?.onPageChanged ?? (index, reason) {print(index); print(reason);},
        viewportFraction: config?.viewportFraction ?? 0.6,
        height: config?.height ?? 200,

      ),
      items: this.widgetList, 
          // imgList
          // ?.map((item) => Container(
          //       // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          //       child: Center(
          //         child: Image.network(
          //         item,
          //         fit: BoxFit.cover,
          //         width: style?.width ?? 500,
          //         height: style?.height?? 100,
          //       )),
          //     ))
          // .toList(),
    );
  }
}
