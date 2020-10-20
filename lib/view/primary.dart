import 'package:aspirationasia/utils/constants.dart';
import 'package:aspirationasia/utils/strings.dart';
import 'package:aspirationasia/view/bookings/bookings.dart';
import 'package:aspirationasia/view/profile/profile.dart';
import 'package:aspirationasia/view/wishlist/wishlist.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/home.dart';

class Primary extends StatefulWidget {
  static String routeName = "/primary";

  @override
  State<StatefulWidget> createState() => _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  final Key keyOne = PageStorageKey('Home');
  final Key keyTwo = PageStorageKey('Bookings');
  final Key keyThree = PageStorageKey('Wishlist');
  final Key keyFour = PageStorageKey('Profile');

  int _selectedIndex = 0;
  List<Widget> _pages;
  Widget _currentPage;
  final PageStorageBucket _bucket = PageStorageBucket();

  Home _home;
  Bookings _bookings;
  Wishlist _wishlist;
  Profile _profile;

  @override
  void initState() {
    _home = Home(key: keyOne);
    _bookings = Bookings(key: keyTwo);
    _wishlist = Wishlist(key: keyThree);
    _profile = Profile(key: keyFour);

    _pages = [_home, _bookings, _wishlist, _profile];
    _currentPage = _home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Scaffold(
      body: PageStorage(
        // child: pages[_selectedIndex],
        child: _currentPage,
        bucket: _bucket,
      ),
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavyBar(
        showElevation: true,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
            _currentPage = _pages[index];
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text(Strings.TITLE_HOME),
            activeColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.book_outlined),
              title: Text(Strings.TITLE_BOOKINGS),
              activeColor: kPrimaryColor),
          BottomNavyBarItem(
              icon: Icon(Icons.present_to_all),
              title: Text(Strings.TITLE_WISHLIST),
              activeColor: kPrimaryColor),
          BottomNavyBarItem(
              icon: Icon(Icons.perm_identity),
              title: Text(Strings.TITLE_PROFILE),
              activeColor: kPrimaryColor),
        ],
      );
}
