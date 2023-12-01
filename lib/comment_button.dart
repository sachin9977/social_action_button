import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final IconData icon;

  const CommentButton(
      {super.key,
      this.onPressed,
      this.color = Colors.blue,
      this.icon = CupertinoIcons.chat_bubble});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: onPressed,
    );
  }
}
