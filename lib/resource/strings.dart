class Strings {
  Strings._();

  //AssetPath
  static const String assetParent = "assets/";
  static const String assetFont = "${assetParent}fonts/";
  static const String assetImageApp = "${assetParent}image_app/";
  static const String assetIcon = "${assetImageApp}icon/";

  //Routes name
  static const String screenLogin = "login_screen";
  static const String screenRegister = "register_screen";
  static const String screenHome = "home";

  //LoginPage
  static const String titleLoginScreen = "Đăng nhập";
  static const String hintLoginUsernameInputField = "Nhập tên đăng nhập";
  static const String hintLoginPasswordInputField = "Nhập mật khẩu";
  static const String contentLoginButton = "Đăng nhập";
  static const String contentOtherLoginChoice = "Hoặc đăng nhập với";
  static const String contentQuestionToRegister = "Bạn chưa có tài khoản?";
  static const String contentActionGoToRegister = "Đăng ký";

  //RegisterPage
  static const String titleRegisterScreen = "Đăng ký";
  static const String hintRegisterUsernameInputField = "Nhập tên đăng nhập";
  static const String hintRegisterPasswordInputField = "Nhập mật khẩu";
  static const String hintRegisterRetypePasswordInputField =
      "Nhập lại mật khẩu";
  static const String contentRegisterButton = "Đăng ký";
  static const String contentOtherRegisterChoice = "Hoặc đăng ký với";
  static const String contentQuestionToLogin = "Bạn đã có tài khoản?";
  static const String contentActionGoToLogin = "Đăng nhập";

  //HomePage
  //Tab
  static const String labelTabHome1 = "Hỏi đáp";
  static const String labelTabHome2 = "SGK";
  static const String labelTabHome3 = "Chat GPT";
  static const String labelTabHome4 = "Thông báo";
  static const String labelTabHome5 = "Cá nhân";
  // QuestionList
  static const String titleQuestionListScreen = "Hỏi đáp bài tập";
  static const String titleElementTopMember = "Top thành viên";

  //Error Message Local
  static const String errorSignUserNameEmpty = "Vui lòng nhập tên đăng nhập";
  static const String errorSignUserNameInvalidateWord = "Tên đăng nhập không chứa ký tự đặc biệt";
  static const String errorSignUserNameInvalidateSize = "Tên đăng phải chứa ít nhất 6 ký tự và tối đa 50 ký tự";
  static const String errorSignPasswordEmpty = "Vui lòng nhập mật khẩu";
  static const String errorSignPasswordInvalidateSize = "Mật khẩu phải chứa ít nhất 8 ký tự và tối đa 50 ký tự";
  static const String errorSignPasswordInvalidateEqual = "Mật khẩu nhập lại không khớp";
}
