import 'package:flutter/material.dart';
import 'package:platform_builder/platform_builder.dart';

class PlatformBuilder extends StatefulWidget {
  const PlatformBuilder({Key? key, required Text Function(dynamic _context) webBuilder, required Text Function(dynamic _context) iOSBuilder, required Text Function(dynamic _context) androidBuilder}) : super(key: key);

  @override
  State<PlatformBuilder> createState() => _MyAppState();
}

class _MyAppState extends State<PlatformBuilder> {
  @override
  initState() {
    super.initState();

    Platform.init(supportedPlatforms: {
      Platforms.web,
      Platforms.android,
      Platforms.iOS,
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: PlatformBuilder(
            webBuilder: (context) => const Text(
              'You are on web!',
              style: TextStyle(color: Colors.black),
            ),
            iOSBuilder: (context) => const Text(
              'You are on iOS!',
              style: TextStyle(color: Colors.black),
            ),
            androidBuilder: (context) => const Text(
              'You are on Android!',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
