import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_starter_template/models/user.dart';
import 'package:provider_starter_template/providers/user_provider.dart';
import 'package:provider_starter_template/views/forms/login_form.dart';

class LoginPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (BuildContext context) => LoginPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginForm(
              onFormSaved: (User user) => _onFormSaved(context, user),
            ),
          ],
        ),
      ),
    );
  }

  _onFormSaved(BuildContext context, User user) {
    Provider.of<UserProvider>(context, listen: false).setUser(user);
    //Navigator.of(context).pushReplacement(HomePage.route());
  }
}
