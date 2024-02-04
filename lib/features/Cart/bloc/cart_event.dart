import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class CartEvent{

}

class CartInitialEvent extends CartEvent{

}

class CartRemoveEvent extends CartEvent{
  final ProductModel cartModel;

  CartRemoveEvent({required this.cartModel});
}