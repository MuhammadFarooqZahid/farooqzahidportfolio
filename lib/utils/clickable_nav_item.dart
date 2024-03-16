import 'package:flutter/material.dart';

class ClickableNavItem extends StatefulWidget {
  final String label;
  final Function ontap;
  const ClickableNavItem({
    super.key,
    required this.label,
    required this.ontap,
  });

  @override
  State<ClickableNavItem> createState() => _ClickableNavItemState();
}

class _ClickableNavItemState extends State<ClickableNavItem> {
  Color color = Colors.black;
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      onEnter: (event) => _onHoverChanged(enabled: true),
      onExit: (event) => _onHoverChanged(enabled: false),
      child: GestureDetector(
        onTap: ()=>widget.ontap(),
        child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              color: color,
            ),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 100),
              style: style.titleLarge!.copyWith(
                color: _isHovered ? Colors.deepPurple.shade900 : Colors.black,
              ),
              child: Text(widget.label),
            )),
      ),
    );
  }

  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }
}
