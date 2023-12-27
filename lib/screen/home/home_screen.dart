import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/colors.dart';
import 'package:fqa_challenge/resource/strings.dart';
import 'package:fqa_challenge/screen/home/notification/notification_screen.dart';
import 'package:fqa_challenge/screen/home/profile/profile_screen.dart';
import 'package:fqa_challenge/screen/home/question_list/question_list_screen.dart';
import 'package:fqa_challenge/screen/home/school_book/school_book_screen.dart';
import 'package:fqa_challenge/screen/home/timi/timi_screen.dart';
import 'package:fqa_challenge/widget/f_icon_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _listTab = <Widget>[
    const QuestionListPage(),
    const SchoolBookPage(),
    const TimiPage(),
    const NotificationListPage(),
    const ProfilePage()
  ];
  int _selectTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayE5,
      appBar: AppBar(toolbarHeight: 0),
      body: _listTab[_selectTab],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: FImageIcon(
                iconFilename: 'icon_home_tab_question.png',
                size: 24,
              ),
              label: Strings.labelTabHome1),
          const BottomNavigationBarItem(
              icon: FImageIcon(
                iconFilename: 'icon_home_tab_book_stroke.png',
                size: 24,
              ),
              label: Strings.labelTabHome2),
          BottomNavigationBarItem(
              icon: Image.asset('${Strings.assetIcon}icon_home_tab_timi.png',width: 24,height: 24,),
              label: Strings.labelTabHome3),
          const BottomNavigationBarItem(
              icon: FImageIcon(
                iconFilename: 'icon_home_tab_notification.png',
                size: 24,
              ),
              label: Strings.labelTabHome4),
          const BottomNavigationBarItem(
              icon: FImageIcon(
                iconFilename: 'icon_home_tab_profile.png',
                size: 24,
              ),
              label: Strings.labelTabHome5)
        ],
        currentIndex: _selectTab,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.orange4B ,
        unselectedItemColor: AppColors.gray8E,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int position) {
    setState(() {
      _selectTab = position;
    });
  }
}
