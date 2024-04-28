import 'package:flutter/material.dart';
import 'package:learning/data/services/api_services.dart';
import 'package:learning/features/post/post_viewModel.dart';
import 'package:learning/features/post/repository/api_post_repository.dart';
import 'package:learning/features/post/widgets/post_view.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PostViewModel(
        ApiPostRepository(
          ApiService(),
        ),
      ),
      child: MaterialApp(
        theme: ThemeData.light(),
        home: const PostView(),
      ),
    );
  }
}
