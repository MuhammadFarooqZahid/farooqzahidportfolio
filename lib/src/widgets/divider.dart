import 'package:flutter/material.dart';
import 'package:muhammad_farooq/utils/resposive_layout.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return ResposiveLayout(
      desktopWidget: _buildDesktopDivider(width),
      mobileWidget: _buildMobileDivider(width),
    );
  }

  Padding _buildDesktopDivider(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.15),
      child: const Divider(
        thickness: 2,
        color: Colors.deepPurple,
      ),
    );
  }

  Padding _buildMobileDivider(double width) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: const Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 4,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(width: 20),
          Text(
            '&&',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Divider(
              thickness: 4,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
