import 'package:flutter/material.dart';
import 'package:muhammad_farooq/src/screens/home_screen.dart';
import 'package:muhammad_farooq/src/screens/project_screen.dart';
import 'package:muhammad_farooq/src/widgets/app_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveAppBar(
          onIndexChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Projects();
      default:
        return Container(); // Placeholder for default case
    }
  }
}
