import 'package:flutter/material.dart';
import 'package:learning/features/post/post_viewModel.dart';
import 'package:learning/features/post/widgets/new_product.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Consumer<PostViewModel>(
        builder: (context, viewModel, child) {
          viewModel.fetchProducts();
          if (viewModel.products != null &&
              viewModel.products!.products.isNotEmpty) {
            return RefreshIndicator(
              onRefresh: () => viewModel.fetchProducts(),
              child: ListView.builder(
                itemCount: viewModel.products!.products.length,
                itemBuilder: (context, index) {
                  final product = viewModel.products!.products[index];
                  return ListTile(
                    leading: Icon(Icons.book_outlined),
                    title: Text(product.name),
                    subtitle: Text(product.type),
                    trailing: Text(product.price.toString()),
                  );
                },
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (ctx) {
                return const NewProduct();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
