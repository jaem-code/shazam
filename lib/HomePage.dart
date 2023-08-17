import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Chart.dart';
import 'Home.dart';
import 'Libarary.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            TabBarView(
              children: [
                LibararyTab(),
                HomeTab(),
                ChartTab(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: TabPage(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      color: DefaultTabController.of(context).index == 1
          ? Colors.blue[300]
          : Colors.grey[400],
      selectedColor: DefaultTabController.of(context).index == 1
          ? Colors.white
          : Colors.blue,
      indicatorSize: 8,
    );
  }
}

