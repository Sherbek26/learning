// ApiPostRepository.dart
import 'package:learning/data/models/products_model.dart';
import 'package:learning/data/repositories/post_repository.dart';
import 'package:learning/data/services/api_services.dart';

class ApiPostRepository extends PostRepository {
  final ApiService apiService;

  ApiPostRepository(this.apiService);

  @override
  Future<ProductsModel> createProducts(ProductsModel productsModel) {
    throw UnimplementedError();
  }

  @override
  Future<ProductsModel> fetchProducts() {
    return apiService.fetchProducts();
  }
}
