import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.icon,
      required this.onPress,
      this.paddingValue = 5,
      this.isSelected = false})
      : super(key: key);
  final Icon icon;
  final VoidCallback onPress;
  final double paddingValue;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(paddingValue),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black12 : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: onPress, icon: icon));
  }
}
