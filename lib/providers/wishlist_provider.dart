import 'package:flutter/material.dart';
import 'package:footcraze_frontend/models/product_model.dart';
import 'package:footcraze_frontend/services/product_service.dart';

class WishlistProvider with ChangeNotifier {

  List<ProductModel> _wishlist = [];
  List<ProductModel> get wishlist => _wishlist;

  set wishlist(List<ProductModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(ProductModel product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishlist(ProductModel product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}