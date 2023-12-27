import 'package:flutter/material.dart';
import 'package:fqa_challenge/screen/register/register_bloc.dart';
import 'package:fqa_challenge/utils/toast_util.dart';

import '../../resource/colors.dart';
import '../../resource/strings.dart';
import '../../resource/text_style.dart';
import '../../widget/f_button_primary.dart';
import '../../widget/f_group_action_horizontal.dart';
import '../../widget/f_icon_image.dart';
import '../../widget/f_text_field_primary.dart';
import '../../widget/f_title_screen.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  final _bloc = RegisterBloc();

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPassword = false;
  bool _showRePassword = false;

  @override
  void initState() {
    super.initState();
    widget._bloc.registerStreamController.stream.listen((event) {},
        onError: (error) {
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
            const TitleScreen(title: Strings.titleRegisterScreen),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FTextFieldPrimary(
                hintText: Strings.hintRegisterUsernameInputField,
                iconStart: const FImageIcon(
                  iconFilename: "icon_user_input_user_name.png",
                ),
                textInputAction: TextInputAction.next,
                controller: widget._bloc.textUserNameController,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FTextFieldPrimary(
                  hintText: Strings.hintRegisterPasswordInputField,
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
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FTextFieldPrimary(
                  hintText: Strings.hintRegisterRetypePasswordInputField,
                  iconStart: const FImageIcon(
                      iconFilename: 'icon_password_input_password.png'),
                  iconEnd: IconButton(
                    onPressed: _toggleStateInputRePassword,
                    icon: FImageIcon(
                        iconFilename: _showRePassword
                            ? 'icon_show_password_input_password.png'
                            : 'icon_hide_password_input_password.png'),
                  ),
                  usePassword: _showRePassword,
                  controller: widget._bloc.textRePasswordController,
                )),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FButtonPrimary(
                labelButton: Strings.contentRegisterButton,
                onActionButton: _actionRegisterButton,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Strings.contentOtherRegisterChoice,
              style: textTheme.displaySmall!.copyWith(color: AppColors.gray2E),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: FGroupActionHorizontal(assetPathWithAction: {
                '${Strings.assetIcon}icon_google_button_other_login.png':
                    _actionRegisterGoogleButton,
                '${Strings.assetIcon}icon_facebook_button_other_login.png':
                    _actionRegisterFacebookButton,
                '${Strings.assetIcon}icon_zalo_button_other_login.png':
                    _actionRegisterZaloButton,
                '${Strings.assetIcon}icon_apple_button_other_login.png':
                    _actionRegisterAppleButton,
              }),
            ),
            const SizedBox(
              height: 32,
            ),
            FDirectorToLogin(
              onActionToLogin: _navigateToLoginAction,
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

  void _toggleStateInputRePassword() {
    setState(() {
      _showRePassword = !_showRePassword;
    });
  }

  void _actionRegisterButton() {
    widget._bloc.executeRegister();
  }

  void _actionRegisterGoogleButton() {}

  void _actionRegisterZaloButton() {}

  void _actionRegisterFacebookButton() {}

  void _actionRegisterAppleButton() {}

  void _navigateToLoginAction() {
    Navigator.pop(context);
  }
}

class FDirectorToLogin extends StatelessWidget {
  const FDirectorToLogin({
    super.key,
    required this.onActionToLogin,
  });

  final Function onActionToLogin;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.contentQuestionToLogin,
          style: textTheme.bodyMedium!.copyWith(color: AppColors.gray55),
        ),
        InkWell(
            onTap: () {
              onActionToLogin();
            },
            child: Text(
              Strings.contentActionGoToLogin,
              style: textTheme.displayLarge!.copyWith(color: AppColors.orange4B),
            ))
      ],
    );
  }
}
