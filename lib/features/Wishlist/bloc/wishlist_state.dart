import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class WishListState {

}

abstract class WishlistActionState extends WishListState{
  
}


class WishlistInitial extends WishListState{

}

class WishlistSuccessState extends WishListState{
  final List<ProductModel> wishList;

  WishlistSuccessState({required this.wishList});
}