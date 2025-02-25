import 'package:flutter/material.dart';
import 'package:footcraze_frontend/models/cart_model.dart';
import 'package:footcraze_frontend/models/product_model.dart';

class CartProvider with ChangeNotifier {
  
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel product) {
    
    if(productExist(product)) {
      int index = _carts.indexWhere((element) => element.product!.id! == product.id);
      _carts[index].quantity = _carts[index].quantity! + 1;
    } else {
      _carts.add(CartModel(
        id: _carts.length,
        product: product,
        quantity: 1
      ));
    }

    notifyListeners();
  }

  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  addQuantity(int id) {
    _carts[id].quantity = _carts[id].quantity!+1;
    notifyListeners();
  }

  reduceQuantity(int id) {
    if (_carts[id].quantity == 1) {
      removeCart(id);
    } else {
      _carts[id].quantity = _carts[id].quantity!-1;
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for(var item in _carts) {
      total += item.quantity!;
    }

    return total;
  }

  totalPrice() {
    double total = 0;
    for(var item in _carts) {
      total += item.quantity! * item.product!.price!;
    }

    return total;
  }

  productExist(ProductModel product) {
    if (_carts.indexWhere((element) => element.product!.id! == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }

}