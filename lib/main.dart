import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:porfolio_web/core/init/my_theme.dart';
import 'package:porfolio_web/feature/home/view/home_view.dart';
import 'package:provider/provider.dart';
import 'feature/home/view_modal/home_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(providers: [
    Provider<HomeViewModel>(
      create: (context) => HomeViewModel(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: myTheme, debugShowCheckedModeBanner: false, home: HomeView());
  }
}
