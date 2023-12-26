import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:fqa_challenge/locator.dart';
import 'package:fqa_challenge/resource/strings.dart';

class LoginBloc {
  final textUserNameController = TextEditingController();
  final textPasswordController = TextEditingController();

  final loginStreamController = StreamController<bool>();

  bool _invalidateInputLogin() {
    var userName = textUserNameController.text;
    var password = textPasswordController.text;
    if (userName.isEmpty) {
      loginStreamController.addError(Strings.errorSignUserNameEmpty);
      return false;
    }
    if (password.isEmpty) {
      loginStreamController.addError(Strings.errorSignPasswordEmpty);
      return false;
    }
    return true;
  }

  void executeLogin(){
    if(!_invalidateInputLogin()) return;
    loginStreamController.add(true);
    Locator.appPref.setToken("1");
  }
}
