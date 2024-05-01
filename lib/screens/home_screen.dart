import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Meet & Chat",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.videocam,
                text: "New Meeting",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: "Join Meeting",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.calendar_today,
                text: "Schedule",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.arrow_upward,
                text: "Share Screen",
              )
            ],
          ),
          const Expanded(
              child: Center(
            child: Text(
              "Create/join Meeting with just a click",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 24),
            ),
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 14,
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _page,
        onTap: onPageChanged,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              label: "Meet & Chat",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.lock_clock,
              ),
              label: "Meetings",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: "Profile",
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings",
              backgroundColor: Colors.transparent),
        ],
      ),
    );
  }
}
