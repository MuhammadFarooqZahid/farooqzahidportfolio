import 'package:flutter/material.dart';
import 'package:muhammad_farooq/utils/clickable_nav_item.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return ResposiveLayout(
      desktopWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Drop us a line and let's start\nbuilding something incredible together!",
            textAlign: TextAlign.center,
            style: style.headlineMedium,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClickableNavItem(label: 'Gmail', ontap: () {}),
              const SizedBox(width: 20),
              ClickableNavItem(label: 'Instagram', ontap: () {}),
              const SizedBox(width: 20),
              ClickableNavItem(
                label: 'Linkedin',
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
      mobileWidget: SizedBox(),
    );
  }
}
