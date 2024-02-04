import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class HomeEvent{

}

class HomeInitialEvent extends HomeEvent{

}

class AddToWishListEvent extends HomeEvent{
  final ProductModel clickedProduct;

  AddToWishListEvent({required this.clickedProduct});
}

class AddToCartEvent extends HomeEvent{
  final ProductModel clickedProduct;

  AddToCartEvent({required this.clickedProduct});
}

class NavigateToWishlistEvent extends HomeEvent{

}

class NavigateToCartEvent extends HomeEvent{

}