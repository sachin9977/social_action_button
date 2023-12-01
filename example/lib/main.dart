import 'package:flutter/material.dart';
import 'package:social_action_button/social_media_buttons.dart'; // Import the SocialMediaButtons widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Social Media Buttons Example'),
        ),
        body: Center(
          child: SocialMediaButtons(
            likeColor: Colors.black,
            commentColor: Colors.black,
            shareColor: Colors.black,
            saveColor: Colors.black,
            showLikeButton: true,
            showCommentButton: true, // Hide comment button
            showShareButton: true,
            showSaveButton: true,
            onLikePressed: () {
              print('Like pressed!');
            },
            // Define other callbacks as needed
          ),
        ),
      ),
    );
  }
}
