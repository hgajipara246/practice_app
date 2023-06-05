import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TabbarOne extends StatefulWidget {
  const TabbarOne({super.key});

  @override
  State<TabbarOne> createState() => _TabbarOneState();
}

class _TabbarOneState extends State<TabbarOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140, top: 60),
                  child: Column(
                    children: [
                      // Image.asset(
                      //   "assets/images/text.png",
                      //   width: 120,
                      //   height: 40,
                      // )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Container(
                height: 40,
                width: 376,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Search",
                        style: TextStyle(
                          color: Color(0xFFB8B8B8),
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/images/search.png",
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 1,
                    labelColor: Colors.black,
                    unselectedLabelColor: Color(0xFFAB0B3A),
                    indicatorColor: Color(0xFFAB0B3A),
                    tabs: [
                      Tab(text: "WEEK"),
                      Tab(text: "MONTH"),
                      Tab(text: "YEAR"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Week")),
                  Center(child: Text("Week")),
                  Center(child: Text("Week")),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
