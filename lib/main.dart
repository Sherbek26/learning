import 'package:flutter/material.dart';
import 'package:learning/features/post/screens/posts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostScreen();
  }
}
