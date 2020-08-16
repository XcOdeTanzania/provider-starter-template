import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_starter_template/providers/cart_provider.dart';
import 'package:provider_starter_template/providers/greetings_provider.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (BuildContext context) => HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Provider.of<CartProvider>(context).user.username,
            ),
            Text(
              Provider.of<CartProvider>(context).cartGreeting,
            ),
          ],
        ),
      ),
    );
  }
}
