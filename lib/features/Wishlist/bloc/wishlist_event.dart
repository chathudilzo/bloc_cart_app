import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class WishlistEvent{

}


class InitialWishlistEvent extends WishlistEvent{

}


class RemoveWishlistEvent extends WishlistEvent{
  final ProductModel wishlistModel;

  RemoveWishlistEvent({required this.wishlistModel});
}