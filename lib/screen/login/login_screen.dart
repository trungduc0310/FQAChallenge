import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:fqa_challenge/resource/colors.dart';
import 'package:fqa_challenge/resource/strings.dart';
import 'package:fqa_challenge/resource/text_style.dart';
import 'package:fqa_challenge/screen/login/login_bloc.dart';
import 'package:fqa_challenge/utils/toast_util.dart';
import 'package:fqa_challenge/widget/f_icon_image.dart';
import 'package:fqa_challenge/widget/f_title_screen.dart';
import 'package:fqa_challenge/widget/f_toast_error_sign.dart';

import '../../widget/f_button_primary.dart';
import '../../widget/f_group_action_horizontal.dart';
import '../../widget/f_text_field_primary.dart';

class LoginPage extends StatefulWidget {
  final _bloc = LoginBloc();

  @override
  State<StatefulWidget> createState() => _LoginPageState();

  LoginPage({super.key});
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    widget._bloc.loginStreamController.stream.listen((event) {
      if (event) {
        Navigator.pushNamed(context, Strings.screenHome);
      }
    }, onError: (error) {
      AppToast.showErrorToast(context, error);
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('${Strings.assetImageApp}background_appbar_image.png'),
            const SizedBox(
              height: 20,
            ),
            const TitleScreen(title: Strings.titleLoginScreen),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FTextFieldPrimary(
                  hintText: Strings.hintLoginUsernameInputField,
                  iconStart: const FImageIcon(
                    iconFilename: "icon_user_input_user_name.png",
                  ),
                  textInputAction: TextInputAction.next,
                  controller: widget._bloc.textUserNameController),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FTextFieldPrimary(
                  hintText: Strings.hintLoginPasswordInputField,
                  iconStart: const FImageIcon(
                      iconFilename: 'icon_password_input_password.png'),
                  iconEnd: IconButton(
                    onPressed: _toggleStateInputPassword,
                    icon: FImageIcon(
                        iconFilename: _showPassword
                            ? 'icon_show_password_input_password.png'
                            : 'icon_hide_password_input_password.png'),
                  ),
                  usePassword: _showPassword,
                  controller: widget._bloc.textPasswordController,
                )),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FButtonPrimary(
                labelButton: Strings.contentLoginButton,
                onActionButton: _actionLoginButton,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Strings.contentOtherLoginChoice,
              style: textTheme.displaySmall!.copyWith(color: AppColors.gray2E),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: FGroupActionHorizontal(assetPathWithAction: {
                '${Strings.assetIcon}icon_google_button_other_login.png':
                    _actionLoginGoogleButton,
                '${Strings.assetIcon}icon_facebook_button_other_login.png':
                    _actionLoginFacebookButton,
                '${Strings.assetIcon}icon_zalo_button_other_login.png':
                    _actionLoginZaloButton,
                '${Strings.assetIcon}icon_apple_button_other_login.png':
                    _actionLoginAppleButton,
              }),
            ),
            const SizedBox(
              height: 32,
            ),
            FDirectorToRegister(
              onActionToRegister: _navigateToRegisterAction,
            )
          ],
        ),
      ),
    );
  }

  void _toggleStateInputPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _actionLoginButton() {
    widget._bloc.executeLogin();
  }

  void _actionLoginGoogleButton() {}

  void _actionLoginZaloButton() {}

  void _actionLoginFacebookButton() {}

  void _actionLoginAppleButton() {}

  void _navigateToRegisterAction() async {
    await Navigator.pushNamed(context, Strings.screenRegister);
  }
}

class FDirectorToRegister extends StatelessWidget {
  const FDirectorToRegister({
    super.key,
    required this.onActionToRegister,
  });

  final Function onActionToRegister;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.contentQuestionToRegister,
          style: textTheme.bodyMedium!.copyWith(color: AppColors.gray55),
        ),
        InkWell(
            onTap: () {
              onActionToRegister();
            },
            child: Text(
              Strings.contentActionGoToRegister,
              style:
                  textTheme.displayLarge!.copyWith(color: AppColors.orange4B),
            ))
      ],
    );
  }
}
