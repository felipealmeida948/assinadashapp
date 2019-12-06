import 'package:assinaturadashapp/apresentation/dashboard_page.dart';
import 'package:assinaturadashapp/apresentation/reports_page.dart';
import 'package:assinaturadashapp/apresentation/settings_page.dart';
import 'package:assinaturadashapp/apresentation/singatures_page.dart';

import 'package:flutter/material.dart';
import 'styles/styles.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    SignaturesPage(),
    ReportsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Stack(
            children: <Widget>[
              // Text(
              //   'Assinatura',
              //   style: TextStyle(color: Colors.amber),
              // ),
              Text('Dashboard', style: Styles.headPageText),
            ],
          ),
          elevation: 0,
          centerTitle: false,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(color: Styles.contentColor),
            unselectedItemColor: Styles.contentColor,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            iconSize: 26.0,
            elevation: 0.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.tachometer),
                title: Text(
                  'Dashboard',
                  style: Styles.bottomNavigation,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.users),
                title: Text(
                  'Assinaturas',
                  style: Styles.bottomNavigation,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.bar_chart),
                title: Text(
                  'Relatórios',
                  style: Styles.bottomNavigation,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.cog),
                title: Text(
                  'Ajustes',
                  style: Styles.bottomNavigation,
                ),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Styles.primaryColor,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
