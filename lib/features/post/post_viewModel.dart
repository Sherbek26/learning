// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning/data/models/products_model.dart';
import 'package:learning/features/post/repository/api_post_repository.dart';

class PostViewModel extends ChangeNotifier {
  final ApiPostRepository apiPostRepository;

  PostViewModel(this.apiPostRepository);

  ProductsModel? products; // Assuming ProductsModel has a default constructor

  Future<void> fetchProducts() async {
    try {
      products = await apiPostRepository.fetchProducts();
      notifyListeners();
    } catch (e) {
      throw Exception("Error occurred while fetching posts: $e");
    }
  }

  // Future<void> createPost(PostModel postModel) async {
  //   try {
  //     final newPost = await apiPostRepository.createPost(postModel);
  //     posts.add(newPost); // Add new post to the list
  //     notifyListeners();
  //   } catch (e) {
  //     throw Exception("Error occurred while creating a post: $e");
  //   }
  // }
}
