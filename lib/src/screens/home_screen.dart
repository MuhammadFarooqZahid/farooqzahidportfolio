import 'package:flutter/material.dart';
import 'package:muhammad_farooq/data/projects_information.dart';
import 'package:muhammad_farooq/src/widgets/contact.dart';
import 'package:muhammad_farooq/src/widgets/divider.dart';
import 'package:muhammad_farooq/src/widgets/header.dart';
import 'package:muhammad_farooq/src/widgets/project_card.dart';
import 'package:muhammad_farooq/utils/animation.dart';
import 'package:muhammad_farooq/utils/theme_extention.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.15),
      children: [
        const HeaderSection(),
        const Text("Featured Projects").headlineLarge(context),
        const SizedBox(height: 20),
        Column(
          children: List.generate(projects.length, (index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProjectCard(
                  projectModel: projects[index],
                  ontap: () {},
                ).siteWidgetAnimationDelayed(delayedFactor: index + 2),
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
    );
  }
}
