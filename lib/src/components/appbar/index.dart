import 'package:firstapp/src/components/CustomTab/tab.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget with PreferredSizeWidget {
  final String? name;
  final bool? haveTabs;
  final String title;
  final int numberOfIcons;
  final List<Widget> tabsArray;
  final void Function(int)? callback;

  AppBarComponent({Key? key, this.name, required this.title, required this.numberOfIcons, required this.tabsArray, this.callback, this.haveTabs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).padding.top + kToolbarHeight);
    return AppBar(
      title: Text(this.title),
      titleSpacing: 0,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green, Colors.red],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
      ),
      bottom: (this.tabsArray.length > 0) ? TabBar(
        isScrollable: true,
        onTap: this.callback,
        tabs: tabsArray,
      ): null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
