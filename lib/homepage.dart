import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'mobile_view/mobile_navigator.dart';
import 'package:hack_test/desktop_view/desktop_navigator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool get isMobileDevice => !kIsWeb && (Platform.isIOS || Platform.isAndroid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isMobileDevice ? const MobileNavigator() : const DesktopNavigator());
  }
}
