import 'package:flutter/material.dart';
import 'like_button.dart';
import 'comment_button.dart';
import 'share_button.dart';
import 'save_button.dart';

class SocialMediaButtons extends StatelessWidget {
  final bool showLikeButton;
  final bool showCommentButton;
  final bool showShareButton;
  final bool showSaveButton;

  // Callbacks for button press events
  final VoidCallback? onLikePressed;
  final VoidCallback? onCommentPressed;
  final VoidCallback? onSharePressed;
  final VoidCallback? onSavePressed;
  final Color likeColor;
  final Color shareColor;
  final Color commentColor;
  final Color saveColor;

  const SocialMediaButtons({
    super.key,
    this.showLikeButton = true,
    this.showCommentButton = true,
    this.showShareButton = true,
    this.showSaveButton = true,
    this.onLikePressed,
    this.onCommentPressed,
    this.onSharePressed,
    this.onSavePressed,
    required this.likeColor,
    required this.commentColor,
    required this.shareColor,
    required this.saveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (showLikeButton)
              LikeButton(
                onPressed: onLikePressed,
                color: likeColor,
              ),
            if (showCommentButton)
              CommentButton(
                onPressed: onCommentPressed,
                color: commentColor,
              ),
            if (showShareButton)
              ShareButton(
                onPressed: onSharePressed,
                color: shareColor,
              ),
          ],
        ),
        Row(
          children: [
            if (showSaveButton)
              SaveButton(
                onPressed: onSavePressed,
                color: saveColor,
              ),
          ],
        )
      ],
    );
  }
}
