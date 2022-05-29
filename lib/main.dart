import 'package:flutter/material.dart';
import 'package:porfolio_web/core/init/my_theme.dart';
import 'package:porfolio_web/feature/home/view/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: myTheme, debugShowCheckedModeBanner: false, home: HomeView());
  }
}
