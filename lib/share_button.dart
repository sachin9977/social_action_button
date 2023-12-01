import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final IconData icon;

  const ShareButton(
      {super.key,
      this.onPressed,
      this.color = Colors.red,
      this.icon = CupertinoIcons.share});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: onPressed,
    );
  }
}
