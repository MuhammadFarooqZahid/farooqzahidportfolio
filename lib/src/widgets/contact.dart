import 'package:flutter/material.dart';
import 'package:muhammad_farooq/src/widgets/app_bar.dart';
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
            '''Sounds like you're in luck
because Farooq is here to help.''',
            textAlign: TextAlign.center,
            style: style.headlineMedium,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClickableNavItem(
                  child: Text(
                    'email',
                    style: style.titleLarge,
                  ),
                  ontap: () {}),
              const SizedBox(width: 20),
              ClickableNavItem(
                  child: Text(
                    'insta',
                    style: style.titleLarge,
                  ),
                  ontap: () {}),
              const SizedBox(width: 20),
              ClickableNavItem(
                  child: Text(
                    'linkedin',
                    style: style.titleLarge,
                  ),
                  ontap: () {}),
            ],
          ),
        ],
      ),
      mobileWidget: SizedBox(),
    );
  }
}
