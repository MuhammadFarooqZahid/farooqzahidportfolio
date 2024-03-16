import 'package:flutter/material.dart';
import 'package:muhammad_farooq/data/projects_information.dart';
import 'package:muhammad_farooq/src/widgets/project_card.dart';
import 'package:muhammad_farooq/utils/animation.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return ResposiveLayout(
      desktopWidget: buildDesktopWidget(width, height, style),
      mobileWidget: buildMobileWidget(width, height, style),
    );
  }

  buildDesktopWidget(double width, double height, TextTheme style) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.15),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.6,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Explore All Projects',
                      style: style.headlineLarge,
                    ).siteWidgetAnimation(),
                    SizedBox(
                      width: width * 0.35,
                      child: Text(
                        'Curious about what else Farooq Zahid has up his sleeves? Check out our dedicated page to view all projects, from groundbreaking apps to innovative solutions - there\'s something for everyone!',
                        style: style.bodyLarge,
                      ),
                    ).siteWidgetAnimationDelayed(),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
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
            )
          ],
        ),
      ),
    );
  }

  buildMobileWidget(width, height, style) {
    return SizedBox();
  }
}
