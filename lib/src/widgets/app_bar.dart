import 'package:flutter/material.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';
import 'dart:ui' as ui;

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({super.key});

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final style = Theme.of(context).textTheme;
    return ResposiveLayout(
      desktopWidget: destopAppbar(width, style),
      mobileWidget: mobileAppbar(),
    );
  }

  Widget destopAppbar(double width, TextTheme style) {
    return Container(
      height: kToolbarHeight,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: Row(
            children: [
              ClickableNavItem(
                child: Text(
                  'muhammad farooq',
                  style: style.titleLarge,
                ),
                ontap: () {},
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClickableNavItem(
                    child: Text(
                      'projects',
                      style: style.titleLarge,
                    ),
                    ontap: () {},
                  ),
                  const SizedBox(width: 30),
                  ClickableNavItem(
                    child: Text(
                      'about',
                      style: style.titleLarge,
                    ),
                    ontap: () {},
                  ),
                  const SizedBox(width: 30),
                  ClickableNavItem(
                    child: Text(
                      'resume',
                      style: style.titleLarge,
                    ),
                    ontap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileAppbar() {
    return Container(
      height: kToolbarHeight,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          title: const Text('muhammad farooq'),
          actions: [
            PopupMenuButton(
              elevation: 2,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              offset: const Offset(0, kToolbarHeight),
              constraints: const BoxConstraints.tightFor(
                width: double.infinity,
              ),
              icon: const Icon(Icons.menu),
              clipBehavior: Clip.antiAlias,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text('projects'),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text('about'),
                  ),
                  PopupMenuItem(
                    onTap: () {},
                    child: const Text('resume'),
                  ),
                ];
              },
            )
          ],
        ),
      ),
    );
  }
}

class ClickableNavItem extends StatelessWidget {
  final Widget child;
  final Function ontap;
  const ClickableNavItem({
    super.key,
    required this.child,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: GestureDetector(
        child: child,
      ),
    );
  }
}
