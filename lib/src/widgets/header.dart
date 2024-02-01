import 'package:flutter/material.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';
import 'dart:ui' as ui;

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return ResposiveLayout(
      desktopWidget: HeaderBackGround(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'creating beautiful apps\n', style: style.headlineLarge),
                TextSpan(text: 'and pushing boundaries\n', style: style.headlineLarge),
                TextSpan(text: 'with ', style: style.headlineLarge),
                TextSpan(
                    text: 'flutter\n',
                    style: style.headlineLarge!.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.deepPurple,
                      decorationStyle: TextDecorationStyle.wavy,
                      decorationColor: Colors.deepPurple,
                    )),
              ],
            ),
          ),
        ),
      ),
      mobileWidget: HeaderBackGround(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'creating beautiful apps\n', style: style.headlineMedium),
                TextSpan(text: 'and pushing boundaries\n', style: style.headlineMedium),
                TextSpan(text: 'with ', style: style.headlineMedium),
                TextSpan(
                    text: 'flutter\n',
                    style: style.headlineMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.deepPurple,
                      decorationStyle: TextDecorationStyle.wavy,
                      decorationColor: Colors.deepPurple,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderBackGround extends StatelessWidget {
  final Widget child;
  const HeaderBackGround({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return ResposiveLayout(
      desktopWidget: Container(
        padding: EdgeInsets.symmetric(horizontal: (width * 0.15)),
        height: height * 0.8,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          // clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: height * 0.3,
                    width: height * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: height * 0.3,
                    width: height * 0.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple.shade300,
                    ),
                  ),
                ),
              ],
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 100,
              ),
              child: const SizedBox.expand(),
            ),
            child,
          ],
        ),
      ),
      mobileWidget: Container(
        padding: EdgeInsets.symmetric(horizontal: (width * 0.01)),
        height: height * 0.55,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: height * 0.2,
                    width: height * 0.2,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: height * 0.2,
                    width: height * 0.2,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 100,
              ),
              child: const SizedBox.expand(),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
