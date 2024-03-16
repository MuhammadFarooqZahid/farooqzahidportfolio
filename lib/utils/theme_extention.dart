import 'package:flutter/material.dart';

extension TextStyles on Text {
  Text titleLarge(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  Text headlineLarge(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }

  Text headlineMedium(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  Text bodyLarge(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

extension PaddingExtension on Widget {
  Widget addSymPadding(BuildContext context,{double horiPaddingFactor = 0.15,double verticalpadding = 10}) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * horiPaddingFactor,
        vertical: verticalpadding
      ),
      child: this,
    );
  }
}
