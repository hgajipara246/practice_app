import 'package:flutter/material.dart';
import 'package:loop_page_view/loop_page_view.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loop Page View Demo'),
        ),
        body: Center(
          child: LoopPageView.builder(
            allowImplicitScrolling: true,
            reverse: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: LoopPageController(),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Card(
                child: Center(
                  child: Text('$index'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
