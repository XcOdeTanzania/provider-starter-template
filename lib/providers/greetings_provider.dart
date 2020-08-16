import 'package:flutter/foundation.dart';
import 'package:provider_starter_template/providers/user_provider.dart';

class GreetingProvider {
  GreetingProvider({@required UserProvider userProvider})
      : _userProvider = userProvider;

  UserProvider _userProvider;

  String get greeting => "Hello, ${_userProvider.user.username}";
}
