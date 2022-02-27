import 'package:flutter/material.dart';
//        icon: const Icon(Icons.more_horiz),

class customIconButton extends StatelessWidget {
  final double radius;
  final Icon icon;
  final VoidCallback onPressed;
  final Color? iconColor;

  const customIconButton(
      {Key? key,
      required this.radius,
      required this.icon,
      required this.onPressed,
      this.iconColor = const Color(0xff142e5a)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        color: iconColor,
      ),
    );
  }
}
