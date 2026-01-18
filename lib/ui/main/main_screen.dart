import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cat_food_reviews/widgets/app_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: AppBottomNavigationBar(
        navigationShell: widget.navigationShell,
      ),
    );
  }
}
