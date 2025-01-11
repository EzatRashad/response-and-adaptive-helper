import 'package:flutter/material.dart';

class DrawarItemModel {
  final String title;
  final IconData icon;

  DrawarItemModel({required this.title, required this.icon});
}

List<DrawarItemModel> drawerItems = [
  DrawarItemModel(title: 'Home', icon: Icons.home),
  DrawarItemModel(title: 'Settings', icon: Icons.settings),
  DrawarItemModel(title: 'Logout', icon: Icons.logout),
];