import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_starter_template/providers/user_provider.dart';

import 'App.dart';

void main() => runApp(MultiProvider(providers: [
      Provider(
        create: (_) => UserProvider(),
      ),
    ], child: App()));
