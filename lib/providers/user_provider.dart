import 'package:provider_starter_template/models/user.dart';

/// a class definition for [UserProvider]
class UserProvider {
  ///a private instance [_user] of class [User]
  User _user;

  ///a getter [user] to access a private variable[_user] globally
  User get user => _user;

  /// a setter for [_user] variable
  setUser(User user) {
    _user = user;
  }
}
