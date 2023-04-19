import 'package:flutter/material.dart';

import 'first_page.dart';

class NavigatorPractice extends StatelessWidget {
  const NavigatorPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: BackButton(
            color: Colors.white,
          ),
          elevation: 0,
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FirstPage(),
              ),
            ),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            child: const Text("Next Page ->"),
          ),
        ),
      ),
    );
  }
}
