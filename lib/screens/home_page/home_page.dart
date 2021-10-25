import 'package:flutter/material.dart';
import 'package:interview_task/common_widgets/custom_button.dart';
import 'package:interview_task/screens/home_page/chat_fragment.dart';
import 'package:interview_task/screens/home_page/home_fragment.dart';
import 'package:interview_task/ui_components/icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 34, fontFamily: 'Poppins');
  static const List<Widget> _widgetOptions = <Widget>[
   HomeFragment(),
    Text(
      'Moments',
      style: optionStyle,
    ),
  ChatFragment(),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(
                MyFlutterApp.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                MyFlutterApp.users,
            ),
            label: 'Moments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                MyFlutterApp.send,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                MyFlutterApp.user,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
