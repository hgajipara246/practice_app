import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MediaQueryOne extends StatefulWidget {
  const MediaQueryOne({super.key});

  @override
  State<MediaQueryOne> createState() => _MediaQueryOneState();
}

class _MediaQueryOneState extends State<MediaQueryOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 10;
    double width = MediaQuery.of(context).size.height / 10;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  debugPrint("hello");
                },
                focusColor: Colors.black,
                borderRadius: BorderRadius.circular(0),
                child: Container(
                  height: height,
                  width: width,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.green,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.blue,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.orange,
              ),
              SizedBox(
                height: height,
              ),
              SizedBox(
                height: height,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: height,
                        width: width,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: width,
                      ),
                      Container(
                        height: height,
                        width: width,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: width,
                      ),
                      Container(
                        height: height,
                        width: width,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width,
                      ),
                      Container(
                        height: height,
                        width: width,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.purpleAccent,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height,
                width: width,
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
