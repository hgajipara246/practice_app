import 'package:flutter/material.dart';



class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageViewDemo(),
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            MyBox(darkGreen, height: 50),
          ],
        ),
        Row(
          children: [
            MyBox(lightGreen),
            MyBox(lightGreen),
          ],
        ),
        MyBox(mediumGreen, text: 'PageView 1'),
        Row(
          children: [
            MyBox(lightGreen, height: 200),
            MyBox(lightGreen, height: 200),
          ],
        ),
      ],
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: const [
            MyBox(darkBlue, height: 50),
            MyBox(darkBlue, height: 50),
          ],
        ),
        Row(
          children: const [
            MyBox(lightBlue),
            MyBox(lightBlue),
          ],
        ),
        const MyBox(mediumBlue, text: 'PageView 2'),
        Row(
          children: const [
            MyBox(lightBlue),
            MyBox(lightBlue),
          ],
        ),
      ],
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  const MyPage3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            MyBox(darkRed),
            MyBox(darkRed),
          ],
        ),
        MyBox(mediumRed, text: 'PageView 3'),
        Row(
          children: [
            MyBox(lightRed),
            MyBox(lightRed),
            MyBox(lightRed),
          ],
        ),
      ],
    );
  }
}

const lightBlue = Color(0xff00bbff);
const mediumBlue = Color(0xff00a2fc);
const darkBlue = Color(0xff0075c9);

final lightGreen = Colors.green.shade300;
final mediumGreen = Colors.green.shade600;
final darkGreen = Colors.green.shade900;

final lightRed = Colors.red.shade300;
final mediumRed = Colors.red.shade600;
final darkRed = Colors.red.shade900;

class MyBox extends StatelessWidget {
  final Color color;
  final double? height;
  final String? text;

  const MyBox(this.color, {super.key, this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        color: color,
        height: (height == null) ? 150 : height,
        child: (text == null)
            ? null
            : Center(
                child: Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }
}
