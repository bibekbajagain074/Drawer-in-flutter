import 'package:flutter/material.dart';

class DrawerData {
  String title;
  IconData icon;

  DrawerData({required this.title, required this.icon});
}

List<DrawerData> drawerList = [
  DrawerData(title: "Home", icon: Icons.home),
  DrawerData(title: "Cointact us", icon: Icons.phone),
  DrawerData(title: "About us", icon: Icons.info),
  DrawerData(title: "Setting", icon: Icons.settings)
  
];
