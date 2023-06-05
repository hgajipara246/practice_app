import 'package:flutter/material.dart';

class MediaQueryOne extends StatefulWidget {
  const MediaQueryOne({super.key});

  @override
  State<MediaQueryOne> createState() => _MediaQueryOneState();
}

class _MediaQueryOneState extends State<MediaQueryOne> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
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
                  height: height / 10,
                  width: width / 10,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.green,
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.blue,
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.orange,
              ),
              SizedBox(
                height: height / 10,
              ),
              SizedBox(
                height: height,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: height / 10,
                        width: width / 10,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: width / 10,
                      ),
                      Container(
                        height: height / 10,
                        width: width / 10,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: width / 10,
                      ),
                      Container(
                        height: height / 10,
                        width: width / 10,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: width / 10,
                      ),
                      Container(
                        height: height / 10,
                        width: width / 10,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.purpleAccent,
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.deepPurpleAccent,
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.lightGreenAccent,
              ),
              SizedBox(
                height: height / 10,
              ),
              Container(
                height: height / 10,
                width: width / 10,
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
