import 'package:flutter/material.dart';
import 'package:muhammad_farooq/utils/clickable_nav_item.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({
    super.key,
    required this.onIndexChanged,
  });
  final Function(int index) onIndexChanged;

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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.15),
        child: Row(
          children: [
            ClickableNavItem(
              label: 'Muhammad Farooq',
              ontap: () {
                widget.onIndexChanged(0);
              },
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClickableNavItem(
                  label: 'Projects',
                  ontap: () {
                    widget.onIndexChanged(1);
          
                  },
                ),
                const SizedBox(width: 30),
                ClickableNavItem(
                  label: 'About',
                  ontap: () {
                    widget.onIndexChanged(2);
                  },
                ),
                const SizedBox(width: 30),
                ClickableNavItem(
                  label: 'Resume',
                  ontap: () {
                    widget.onIndexChanged(3);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileAppbar() {
    return Container(
      height: kToolbarHeight,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(),
      child: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: const Text('muhammad farooq'),
        actions: [
          PopupMenuButton(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey.shade300),
            ),
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
    );
  }
}
