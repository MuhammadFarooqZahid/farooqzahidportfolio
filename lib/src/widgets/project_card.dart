import 'package:flutter/material.dart';
import 'package:muhammad_farooq/data/projects_information.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  final Function ontap;
  const ProjectCard({
    super.key,
    required this.projectModel,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final style = Theme.of(context).textTheme;
    return ResposiveLayout(
      desktopWidget: SizedBox(
        height: 450,
        child: CardBase(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(30),
                  color: Colors.white,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      color: Colors.purple.shade100,
                      child: Image.network(
                        projectModel.thumbnailUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const VerticalDivider(color: Colors.black),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.deepPurple.shade200,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectModel.title,
                        style: style.headlineMedium,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        projectModel.details,
                        maxLines: 4,
                        textAlign: TextAlign.start,
                        style: style.bodyLarge,
                      ),
                      const SizedBox(height: 20),
                      FilledButton.icon(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                              Size(double.infinity, 45)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward),
                        label: Text(
                          'View',
                          style: style.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      mobileWidget: SizedBox(
        height: 550,
        child: CardBase(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(30),
                  color: Colors.white,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      color: Colors.purple.shade100,
                      child: Image.network(
                        projectModel.thumbnailUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.deepPurple.shade200,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectModel.title,
                        style: style.headlineMedium,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        projectModel.details,
                        maxLines: 4,
                        textAlign: TextAlign.start,
                        style: style.bodyLarge,
                      ),
                      const SizedBox(height: 20),
                      FilledButton.icon(
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                              Size(double.infinity, 45)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward),
                        label: Text(
                          'View',
                          style: style.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardBase extends StatelessWidget {
  final Widget child;
  const CardBase({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderOnForeground: true,
      clipBehavior: Clip.hardEdge,
      shadowColor: Colors.deepPurple.shade500,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Colors.black),
      ),
      child: child,
    );
  }
}
