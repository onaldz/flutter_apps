import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:programing_language/widgets/destination_carousel.dart';
import 'package:programing_language/widgets/program_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentTab = 0;
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.code,
    FontAwesomeIcons.coffee,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.bed,
  ];

  Widget _buildIcon (int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
            ? Theme.of(context).accentColor
            : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Mau Belajar Bahasa Program Apa?',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                  ),
              ),
            ),
            SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icons
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                  ),
                SizedBox(height: 20.0),
                DestinationCarousel(),
                SizedBox(height: 20.0),
                ProgramCarousel(),

                // Row(
                  // children: [
                  //   _buildIcon(0),
                  //   _buildIcon(1),
                  //   _buildIcon(2),
                  //   _buildIcon(3),
                  //   _buildIcon(4),
                  //   _buildIcon(5),
                  // ],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: 'no function',

          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.code,
                  size: 30.0,
              ),
            label:'no function',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage('https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',),
            ),
            label:'no function',
          ),
        ],
      ),
    );
  }
}