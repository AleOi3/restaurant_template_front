import 'package:firstapp/src/components/appbar/index.dart';
import 'package:firstapp/src/components/card/card.dart';
import 'package:firstapp/src/components/carousel/CustomImageCrousel.dart';
import 'package:firstapp/src/components/margin/Margin.dart';
import 'package:firstapp/src/contants/constants.dart';
import 'package:firstapp/src/dummies/homePageDummy.dart';
import 'package:firstapp/src/language/language.dart';
import 'package:firstapp/src/mobxState/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  late List<String> localArray = [
    "alexandre",
    "aline",
    "marcos",
  ];

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    const numberOfIcons = 5;
    final mobxState = HomeMoxState();
    List<int> list = [1, 2, 3, 4, 5];
    return DefaultTabController(
      length: numberOfIcons,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130), // 56 is default height
          child: AppBarComponent(
            title: Constants.constants["AppName"],
            numberOfIcons: numberOfIcons,
            callback: (int indice) { print (indice);},
            tabsArray: [
              const Tab(icon: Icon(Icons.local_drink), text: 'Bebidas'),
              const Tab(icon: Icon(Icons.local_dining), text: 'Marmitas'),
              const Tab(icon: Icon(Icons.person,), text: 'Doces'),
              const Tab(icon: Icon(Icons.paid,), text: 'Promoções'),
              const Tab(icon: Icon(Icons.list_alt), text: 'Salgados'),
            ],
          ),
        ), // PreferredSize,
        body: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Column(
            children: [
              Margin(top: 10,),
              CustomImageCarousel(
                // imgList: imgList,
                widgetList: imgList.map((item) => 
                  CardComponent(
                    style: CardStyle(cardHeight: 100,cardWidth: 205,rightContainerHeight: 100,rightContainerWidth: 100,leftContainerHeight: 100,leftContainerWidth: 100,),
                    rightList: [
                        Text("Primeira frase"),
                        Text("Segunda frase"),
                    ],
                    leftList: [
                      Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      )
                    ],
                  ),
                ).toList(),
                config: CustomImageCarouselConfig(false, true, 0,(index, reason){ print("Verificando aqui");print(index);},0.6,120,),
                style: CustomImageCarouselStyle(300, 130),
              ),
              Margin(top: 10,),
              
            ]
            ),
        ),        
        // ListView.builder(
        //   itemCount: localArray.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Text(localArray[index]);
        //   },
        // ),
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              child: Text(
                "Drawer Header",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        )),
      ),
    );
  }
}
