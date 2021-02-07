import 'package:flutter/material.dart';
import 'package:workout/__demoData/demoData.dart';
import 'package:workout/main_app/view/widgets/customTab.dart';
import 'package:workout/main_app/view/widgets/homeGridTabView.dart';
import 'package:workout/main_app/view/widgets/searchField.dart';
import 'package:workout/util/constants.dart';
import 'package:workout/util/resource/color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this)..addListener(() {setState(() {});});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Constants.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'B',
                    color: AppColor.dark
                  ),
                ),
                Text(
                  'Welcome to Yoga Love',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.lightGrey,
                    fontFamily: 'R'
                  ),
                ),
                SizedBox(height: 30),
                SearchField(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: SizedBox(
              height: 27,
              child: TabBar(
                controller: _tabController,
                labelPadding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: 'R'
                ),
                unselectedLabelStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: 'R'
                ),
                indicatorWeight: 1,
                indicatorColor: Colors.transparent,
                tabs: Demo.tabBarItems.map((e) => CustomTab(label: e, isActive: _tabController.index == Demo.tabBarItems.indexOf(e))).toList(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: Demo.tabBarItems.map((e) => HomeTabGridView(swap: Demo.tabBarItems.indexOf(e).isEven)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
