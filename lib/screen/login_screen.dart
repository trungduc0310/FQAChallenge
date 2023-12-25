import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/colors.dart';
import 'package:fqa_challenge/resource/strings.dart';
import 'package:fqa_challenge/resource/text_style.dart';

import '../widget/f_button_primary.dart';
import '../widget/f_text_field_primary.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();

  const LoginPage({super.key});
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image_app/background_appbar_image.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(Strings.titleLoginScreen,
                style: TextStyles.textTitleScreenStyle),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child:
                  FTextFieldPrimary(hintText: Strings.hintUsernameInputField, iconStart: ImageIcon(
                    AssetImage(
                        'assets/image_app/icon/icon_user_input_user_name.png'),
                  ),),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: FTextFieldPrimary(
                  hintText: Strings.hintPasswordInputField,
                  iconStart: ImageIcon(
                    AssetImage(
                        'assets/image_app/icon/icon_password_input_password.png'),
                  ),
                )),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FButtonPrimary(
                labelButton: Strings.contentLoginButton,
                onActionButton: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              Strings.contentOtherLoginChoice,
              style: TextStyles.textContentSubFunction,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: FGroupActionHorizontal(assetPathWithAction: {
                'assets/image_app/icon/icon_google_button_other_login.png':
                    () {},
              }),
            ),
            const SizedBox(
              height: 32,
            ),
            FDirectorToRegister(
              onActionToRegister: () {},
            )
          ],
        ),
      ),
    );
  }
}

class FGroupActionHorizontal extends StatelessWidget {
  const FGroupActionHorizontal({
    super.key,
    required this.assetPathWithAction,
  });

  final Map<String, Function> assetPathWithAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Image.asset(
              'assets/image_app/icon/icon_google_button_other_login.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset(
              'assets/image_app/icon/icon_google_button_other_login.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset(
              'assets/image_app/icon/icon_google_button_other_login.png'),
          onTap: () {},
        ),
        InkWell(
          child: Image.asset(
              'assets/image_app/icon/icon_google_button_other_login.png'),
          onTap: () {},
        )
      ],
    );
  }

  List<Widget> _generateWidgetByAction() {
    List<Widget> listWidget = List.empty();
    assetPathWithAction.forEach((key, value) {
      listWidget.add(InkWell(
        onTap: value(),
        child: Image.asset(key),
      ));
    });
    return listWidget;
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.contentQuestionToRegister,
          style: TextStyles.textDirectoryToAction,
        ),
        TextButton(
            onPressed: onActionToRegister(),
            child: const Text(
              Strings.contentActionGoToRegister,
              style: TextStyles.textActionPrimary,
            ))
      ],
    );
  }
}
