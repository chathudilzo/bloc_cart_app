import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class CartState{

} 

abstract class CartActionState extends CartState{

}

class CartInitial extends CartState{

}

class CartSuccessState extends CartState{
final List<ProductModel> cartItems;

CartSuccessState({required this.cartItems});

}