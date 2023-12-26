import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../../resource/strings.dart';

class RegisterBloc {
  final textUserNameController = TextEditingController();
  final textPasswordController = TextEditingController();
  final textRePasswordController = TextEditingController();

  final registerStreamController = StreamController<bool>();

  bool _invalidateInputRegister() {
    var userName = textUserNameController.text;
    var password = textPasswordController.text;
    var reTypePassword = textRePasswordController.text;
    if (userName.isEmpty) {
      registerStreamController.addError(Strings.errorSignUserNameEmpty);
      return false;
    }
    if (password.isEmpty) {
      registerStreamController.addError(Strings.errorSignPasswordEmpty);
      return false;
    }
    if (reTypePassword.isEmpty) {
      registerStreamController.addError(Strings.errorSignPasswordEmpty);
      return false;
    }
    if (reTypePassword != password) {
      registerStreamController
          .addError(Strings.errorSignPasswordInvalidateEqual);
      return false;
    }
    return true;
  }

  void executeRegister() {
    if (!_invalidateInputRegister()) return;
    registerStreamController.add(true);
  }
}
