import 'package:flutter/material.dart';
import 'package:sipfupdate/utils/color_constant.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.title,
    required this.onTap,
    this.color = ColorConstant.primary,
    this.textColor = Colors.white,
  });

  final String title;
  final void Function()? onTap;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap dari constructor
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
