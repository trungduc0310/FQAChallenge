import 'package:flutter/cupertino.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../widget/f_toast_error_sign.dart';

class AppToast {
  static void showErrorToast(BuildContext context, String error) {
    showToastWidget(
      FToastErrorSign(messageError: error),
      alignment: Alignment.center,
      context: context,
      animation: StyledToastAnimation.slideFromTopFade,
      dismissOtherToast: false,
      position:
          const StyledToastPosition(align: Alignment.topCenter, offset: 0.0),
    );
  }
}
