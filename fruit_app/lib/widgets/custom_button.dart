import 'package:flutter/material.dart';

import '../app/app_theme.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.icon,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
      child: FloatingActionButton(
        backgroundColor: AppTheme.tertiaryColor ?? backgroundColor,
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              //TextLabel Nomeado
              label,
              style: TextStyle(
                fontSize: 18,
                color: AppTheme.primaryColor ?? textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icon,
              color: AppTheme.primaryColor ?? iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
