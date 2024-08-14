import 'package:flutter/material.dart';
import 'package:flutter_widget_app/tab_bar/fragment/alarm_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/balance_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/contact_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/email_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/home_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/person_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/search_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/setting_fragment.dart';

class TabBarTabView extends StatelessWidget {
  const TabBarTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Setting",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "Email",
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Person",
              ),
              Tab(
                icon: Icon(Icons.access_alarm),
                text: "Alarm",
              ),
              Tab(
                icon: Icon(Icons.account_balance),
                text: "Balance",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeFragment(),
            SearchFragment(),
            SettingFragment(),
            EmailFragment(),
            ContactFragment(),
            PersonFragment(),
            AlarmFragment(),
            BalanceFragment(),
          ],
        ),
      ),
    );
  }
}
