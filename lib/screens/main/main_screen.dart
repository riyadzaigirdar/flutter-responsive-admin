import 'package:admin/controllers/MenuController.dart';
import 'package:provider/provider.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/components/dashboard.dart';
import 'package:admin/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> navigations = [ "Dashboard", "Transaction", "Task", "Documents", "Store", "Notifications", "Settings"];
  String selected = "Dashboard";

  void changeNavigation(e){
    setState(() {
      selected = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(changeNavigation, selected),
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(Responsive.isDesktop(context))
                  SideMenu(changeNavigation, selected),
                  DashBoard()
                ],
              ),
      ),
    );
  }
}
