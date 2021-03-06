import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_starter_template/providers/cart_provider.dart';
import 'package:provider_starter_template/providers/greetings_provider.dart';
import 'package:provider_starter_template/providers/user_provider.dart';

import 'App.dart';

void main() => runApp(MultiProvider(providers: [
      Provider(
        create: (_) => UserProvider(),
      ),
      ProxyProvider<UserProvider, GreetingProvider>(
        update: (BuildContext context, UserProvider userProvider,
                GreetingProvider greetingProvider) =>
            GreetingProvider(userProvider: userProvider),
      ),

      ProxyProvider2<UserProvider, GreetingProvider, CartProvider>(
      update: (BuildContext context, UserProvider userProvider,
              GreetingProvider greetingProvider, CartProvider cartProvider) =>
          CartProvider(
        userProvider: userProvider,
        greetingProvider: greetingProvider,
      ),
    ),

    ], child: App()));
