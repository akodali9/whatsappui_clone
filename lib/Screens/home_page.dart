import 'package:flutter/material.dart';
import 'package:whatsappui_clone/Screens/chats_page.dart';
import 'package:whatsappui_clone/Screens/status_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static List screens = [
    ChatsPage(),
    StatusPage(),
    Center(
      child: Text(
        "This is Community",
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        "This is Calls",
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreen.screens[currentindex],
      // bottomNavigationBar: SizedBox(
      //   height: 80,
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: currentindex,
      //     enableFeedback: true,
      //     iconSize: 30,
      //     backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //     showUnselectedLabels: true,
      //     onTap: (int i) => {setState(() => currentindex = i)},
      //     selectedItemColor: Colors.black,
      //     unselectedItemColor: Colors.black38,
      //     items: const [
      //       BottomNavigationBarItem(
      //           activeIcon: Icon(
      //             Icons.chat_bubble,
      //           ),
      //           icon: Icon(
      //             Icons.chat_bubble_outline_rounded,
      //           ),
      //           label: "Chats"),
      //       BottomNavigationBarItem(
      //           activeIcon: Icon(
      //             Icons.web_stories,
      //           ),
      //           icon: Icon(
      //             Icons.amp_stories_rounded,
      //           ),
      //           label: "Status"),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.people_alt_outlined,
      //           ),
      //           activeIcon: Icon(
      //             Icons.people_alt,
      //           ),
      //           label: "Communities"),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.phone_outlined,
      //           color: Colors.black38,
      //         ),
      //         activeIcon: Icon(Icons.phone),
      //         label: "Calls",
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentindex,
        onDestinationSelected: (int i) => {setState(() => currentindex = i)},
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            selectedIcon: Icon(
              Icons.chat_bubble,
            ),
            label: "Chats",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.web_stories_outlined,
            ),
            selectedIcon: Icon(
              Icons.web_stories_rounded,
            ),
            label: "Status",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.people_alt_outlined,
            ),
            selectedIcon: Icon(
              Icons.people_alt,
            ),
            label: "Communities",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.phone_outlined,
            ),
            selectedIcon: Icon(Icons.phone),
            label: "Calls",
          ),
        ],
      ),
    );
  }
}
