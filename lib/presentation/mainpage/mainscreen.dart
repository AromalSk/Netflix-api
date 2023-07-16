import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/functions/function.dart';
import 'package:netflix/presentation/Fast_Laugh/Screen_fast_laugh.dart';
import 'package:netflix/presentation/download/downloadscreen.dart';
import 'package:netflix/presentation/fastluagh/fastlaugh.dart';
import 'package:netflix/presentation/home/homescreen.dart';
import 'package:netflix/presentation/mainpage/widgets/bottomnav.dart';
import 'package:netflix/presentation/new&hot/newandhot.dart';
import 'package:netflix/presentation/search/searchscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages =  [
    HomeScreen(),
    NewAndHot(),
    ScreenFastLaugh(),
    SearchScreen(),
    DownloadScreen()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgorundcolor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexnotifier,
          builder: (context, index, child) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBarwidget(),
    );
  }
}
