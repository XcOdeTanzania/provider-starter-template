import 'package:flutter/material.dart';
import 'package:provider_starter_template/constants/routes.dart';
import 'package:provider_starter_template/views/pages/home_page.dart';
import 'package:provider_starter_template/views/pages/login_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.comfortable,
      ),
      home: LoginPage(),
      routes: {
        homePageRoute: (context) => HomePage(),
      },
    );
  }
}
