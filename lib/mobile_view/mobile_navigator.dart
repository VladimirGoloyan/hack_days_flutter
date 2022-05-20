import 'package:flutter/material.dart';
import 'package:hack_test/mobile_view/login_mobile.dart';
import 'package:hack_test/mobile_view/dashboard_mobile.dart';

void main() => runApp(const MobileNavigator());

class MobileNavigator extends StatelessWidget {
  const MobileNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Navigator',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const LoginMobile(),
        '/dashboard': (BuildContext context) => const DashBoardMobile(),
      },
    );
  }
}