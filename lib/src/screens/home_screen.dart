import 'package:flutter/material.dart';
import 'package:muhammad_farooq/data/projects_information.dart';
import 'package:muhammad_farooq/src/widgets/app_bar.dart';
import 'package:muhammad_farooq/src/widgets/contact.dart';
import 'package:muhammad_farooq/src/widgets/divider.dart';
import 'package:muhammad_farooq/src/widgets/header.dart';
import 'package:muhammad_farooq/src/widgets/project_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ResponsiveAppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const HeaderSection(),
          const LineDivider(),
          const SizedBox(height: 50),
          Column(
            children: List.generate(projects.length, (index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProjectCard(
                    projectModel: projects[index],
                    ontap: () {},
                  ),
                  const SizedBox(height: 50),
                ],
              );
            }),
          ),
          const LineDivider(),
          const SizedBox(height: 50),
          const Contact(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
