import 'package:flutter/material.dart';
import 'package:provider_starter_template/models/user.dart';
import 'package:provider_starter_template/providers/greetings_provider.dart';
import 'package:provider_starter_template/providers/user_provider.dart';

class CartProvider {
  CartProvider({
    @required GreetingProvider greetingProvider,
    @required UserProvider userProvider,
  })  : _greetingProvider = greetingProvider,
        _userProvider = userProvider;

  GreetingProvider _greetingProvider;
  UserProvider _userProvider;

  String get cartGreeting => _greetingProvider.greeting;
  User get user => _userProvider.user;
}
