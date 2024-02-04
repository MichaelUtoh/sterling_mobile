import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sterling/src/components/account_info.dart';
import 'package:sterling/src/components/cardbox.dart';
import 'package:sterling/src/components/image_cards.dart';
import 'package:sterling/src/components/notification.dart';
import 'package:sterling/src/components/popup_transfer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // BottomBar Items
  List<BottomNavigationBarItem> getTabs() {
    return [
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tab_icon1.png',
          height: 32,
          width: 32,
        ),
        activeIcon: Image.asset(
          'assets/images/tab_icon1.png',
          height: 32,
          width: 32,
          // color: Colors.red[500],
          color: _selectedIndex == 0 ? Colors.red[500] : Colors.black,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tab_icon2.png',
          height: 32,
          width: 32,
        ),
        activeIcon: Image.asset(
          'assets/images/tab_icon2.png',
          height: 32,
          width: 32,
          // color: Colors.red[500],
          color: _selectedIndex == 1 ? Colors.red[500] : Colors.black,
        ),
        label: 'Transfers',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tab_icon3.png',
          height: 32,
          width: 32,
        ),
        activeIcon: Image.asset(
          'assets/images/tab_icon3.png',
          height: 32,
          width: 32,
          // color: Colors.red[500],
          color: _selectedIndex == 2 ? Colors.red[500] : Colors.black,
        ),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/tab_icon4.png',
          height: 32,
          width: 32,
        ),
        activeIcon: Image.asset(
          'assets/images/tab_icon4.png',
          height: 32,
          width: 32,
          // color: Colors.red[500],
          color: _selectedIndex == 3 ? Colors.red[500] : Colors.black,
        ),
        label: 'Settings',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    List<String> iconList = [
      'assets/images/card_icon_1.png',
      'assets/images/card_icon_2.png',
      'assets/images/card_icon_3.png',
      'assets/images/card_icon_4.png',
      'assets/images/card_icon_5.png',
      'assets/images/card_icon_6.png',
      'assets/images/card_icon_7.png',
      'assets/images/card_icon_8.png',
    ];
    List<String> labels = [
      'Transfer',
      'Airtime & Data',
      'Bill Payment',
      'FX Swap',
      'Card Request',
      'Products',
      'Cards',
      'Transaction History'
    ];
    List<BottomNavigationBarItem> tabs = getTabs();
    List<String> imageList = [
      "https://plus.unsplash.com/premium_photo-1677553954000-55f4cf063f50?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFua2VyJTIwd29tYW58ZW58MHwwfDB8fHww",
      "https://images.unsplash.com/photo-1487546331507-fcf8a5d27ab3?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGJhbmtlciUyMHdvbWFufGVufDB8MHwwfHx8MA%3D%3D",
      'https://plus.unsplash.com/premium_photo-1661771280191-09de3e6512e6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJsYWNrJTIwY2hpbGRyZW58ZW58MHwwfDB8fHww'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              // Logo & Top Icons
              const DashboardNotification(),

              const SizedBox(height: 20),

              // Account Info Card
              const AccountDashboardCard(),

              const SizedBox(height: 20),

              // Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(label: labels[0], icon: iconList[0]),
                  DashboardCard(label: labels[1], icon: iconList[1]),
                  DashboardCard(label: labels[2], icon: iconList[2]),
                  DashboardCard(label: labels[3], icon: iconList[3]),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DashboardCard(label: labels[4], icon: iconList[4]),
                  DashboardCard(label: labels[5], icon: iconList[5]),
                  DashboardCard(label: labels[6], icon: iconList[6]),
                  DashboardCard(label: labels[7], icon: iconList[7]),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // Image Cards
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DashboardImageCards(
                      cardText: 'Need Money Quick?',
                      imageUrl: imageList[0],
                    ),
                    const SizedBox(width: 10),
                    DashboardImageCards(
                      cardText: 'International Transfers with Ease?',
                      imageUrl: imageList[1],
                    ),
                    const SizedBox(width: 10),
                    DashboardImageCards(
                      cardText: 'Automated Capital Savings?',
                      imageUrl: imageList[2],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CupertinoTabBar(
          activeColor: Colors.red[500],
          height: 70,
          items: tabs,
          currentIndex: _selectedIndex,
          onTap: (index) {
            navigateBottomBar(index);
            if (index == 1) {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const TransferPopup();
                },
              );
            }
          },
        ),
      ),
    );
  }
}
