import 'package:blog_spot/resources/authenticate.dart';
import 'package:flutter/widgets.dart';
import 'package:blog_spot/models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final Authenticate _authMethods = Authenticate();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
