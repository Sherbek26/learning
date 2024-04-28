import 'package:learning/data/models/products_model.dart';

abstract class PostRepository {
  Future<ProductsModel> fetchProducts();
  Future<ProductsModel> createProducts(ProductsModel productsModel);
}
