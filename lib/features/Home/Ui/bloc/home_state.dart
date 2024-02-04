import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';

abstract class HomeState{

}

abstract class HomeActionState extends HomeState{

}

class HomeInitialState extends HomeState{

}


class HomeLoadingState extends HomeState{

}

class HomeLoadingSuccessState extends HomeState{
  final List<ProductModel> products;
  HomeLoadingSuccessState({required this.products});

}

class HomeErrorState extends HomeState{

}



//actionstate

class HomeNavigateToWishlistActionState extends HomeActionState{

}

class HomeNavigateToCartActionState extends HomeActionState{

}


class HomeItemWishListedActionState extends HomeActionState{

}

class HomeItemCartedActionState extends HomeActionState{
  
}