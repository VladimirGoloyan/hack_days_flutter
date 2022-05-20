import 'package:flutter/material.dart';
import 'package:hack_test/desktop_view/login.dart';
import 'package:hack_test/desktop_view/dashboard.dart';

void main() => runApp(const DesktopNavigator());

class DesktopNavigator extends StatelessWidget {
  const DesktopNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desktop Navigator',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Login(),
        '/dashboard': (BuildContext context) => const Dashboard(),
      },
    );
  }
}