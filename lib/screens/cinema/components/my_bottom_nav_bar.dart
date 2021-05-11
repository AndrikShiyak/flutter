import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Theme.of(context).accentColor,
      backgroundColor: Theme.of(context).primaryColor,
      items: [
        BottomNavigationBarItem(
          label: 'У КІНО',
          icon: Icon(
            Icons.play_arrow,
            color: Theme.of(context).accentColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'СКОРО',
          icon: Icon(
            Icons.play_arrow,
            color: Theme.of(context).accentColor,
          ),
        ),
        BottomNavigationBarItem(
          label: 'КВИТКИ',
          icon: Icon(
            Icons.confirmation_number,
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}
