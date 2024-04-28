class ProductsModel {
  ProductsModel({
    required this.products,
    required this.total,
  });

  late final List<Products> products;
  late final int total;

  ProductsModel.fromJson(Map<String, dynamic> json) {
    products = List<Products>.from(
        json['products'].map((productJson) => Products.fromJson(productJson)));
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'products': products.map((product) => product.toJson()).toList(),
      'total': total,
    };
  }
}

class Products {
  Products({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.type,
    required this.isActive,
    required this.admin,
    required this.createdAt,
    required this.updatedAt,
    required this.V,
  });

  late final String id;
  late final String name;
  late final int price;
  late final String image;
  late final String type;
  late final bool isActive;
  late final Admin admin;
  late final String createdAt;
  late final String updatedAt;
  late final int V;

  Products.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
    type = json['type'];
    isActive = json['isActive'];
    admin = Admin.fromJson(json['admin']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'price': price,
      'image': image,
      'type': type,
      'isActive': isActive,
      'admin': admin.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '__v': V,
    };
  }
}

class Admin {
  Admin({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  late final String id;
  late final String firstName;
  late final String lastName;

  Admin.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
