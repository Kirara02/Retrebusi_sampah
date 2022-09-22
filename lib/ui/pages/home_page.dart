import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/pages/akun_page.dart';
import 'package:retrebusi_sampah/ui/pages/dashboard_page.dart';
import 'package:retrebusi_sampah/ui/pages/history_page.dart';
import 'package:retrebusi_sampah/ui/pages/report_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screen = [
    const DashboardPage(),
    const HistoryPage(),
    const ReportPage(),
    const AkunPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0,
        color: whiteColor,
        elevation: 6,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          elevation: 0,
          backgroundColor: whiteColor,
          selectedItemColor: greyColor,
          unselectedItemColor: greenColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 26,
          selectedLabelStyle: greyTextStyle.copyWith(
            fontWeight: medium,
          ),
          unselectedLabelStyle: greenTextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Akun',
            ),
          ],
        ),
      ),
      body: screen[currentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset(
            'assets/ic_scan.png',
            width: 60,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
