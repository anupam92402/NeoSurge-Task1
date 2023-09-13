import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neosurge_task/views/AnalysisScreen.dart';
import 'package:neosurge_task/views/DiscoverScreen.dart';
import 'package:neosurge_task/views/ProfileScreen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0; // To keep track of the current tab index

  final List<Widget> _pages = [
    // Define your pages here
    const DiscoverScreen(),
    const AnalysisScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff1C2031),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/discover.svg',
                height: 32, width: 32,color: _currentIndex == 0? const Color(0xffff8f00):Colors.grey,),
            label: '', // Empty label to hide text
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/chart.svg',
                height: 32, width: 32,color: _currentIndex == 1?  const Color(0xffff8f00):Colors.grey,),
            label: '', // Empty label to hide text
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg',
                height: 32, width: 32,color: _currentIndex == 2?  const Color(0xffff8f00):Colors.grey,),
            label: '', // Empty label to hide text
          ),
        ],
      ),
    );
  }
}