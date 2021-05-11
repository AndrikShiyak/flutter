import 'package:flutter/material.dart';

import './screens/cinema/in_cinema.dart';
import './screens/soon/in_cinema_soon.dart';
import './screens/tickets/tickets_screen.dart';
import './screens/cinema/components/my_floating_action_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinema',
      theme: ThemeData(
        primaryColor: Color(0xFFf01114),
        accentColor: Colors.white,
      ),
      home: Scaffold(body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final _kTabPages = [
    InCinema(),
    InCinemaSoon(),
    Tickets(),
  ];

  static const _kTabs = [
    Tab(icon: Icon(Icons.cloud), text: 'У КІНО'),
    Tab(icon: Icon(Icons.alarm), text: 'СКОРО'),
    Tab(icon: Icon(Icons.forum), text: 'КВИТКИ'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _kTabPages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Львів, Victoria Gardens'),
      ),
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          showBottomSheet(
            // elevation: 8,
            backgroundColor: Colors.black.withOpacity(0.7),
            context: context,
            builder: (context) => GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    MyFloatingActionButton(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          unselectedLabelColor: Theme.of(context).accentColor,
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
