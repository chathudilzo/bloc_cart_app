import 'dart:async';

import 'package:bloc_cart_app/data/cart_items.dart';
import 'package:bloc_cart_app/data/grocery_data.dart';
import 'package:bloc_cart_app/data/wishlist_items.dart';
import 'package:bloc_cart_app/features/Home/Ui/bloc/home_event.dart';
import 'package:bloc_cart_app/features/Home/Ui/bloc/home_state.dart';
import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc():super(HomeInitialState()){
    on<HomeInitialEvent>(homeInitialEvent);
    on<AddToWishListEvent>(addToWishlistEvent);
    on<AddToCartEvent>(addToCartEvent);
    on<NavigateToCartEvent>(navigateToCartEvent);
    on<NavigateToWishlistEvent>(navigaetToWishlistEvent);
  }

FutureOr<void> homeInitialEvent(HomeInitialEvent event,Emitter<HomeState>emit)async{
  emit(HomeLoadingState());
  await Future.delayed(Duration(seconds: 3));
  emit(HomeLoadingSuccessState(products: GroceryData.groceryList.
  map((item) =>
  ProductModel(
    id: item['id'],
     name: item['name'],
      description:item['description'],
       price: item['price'],
        imgUrl: item['imageUrl']) ).toList()));
}
  

  FutureOr<void> addToWishlistEvent(AddToWishListEvent event, Emitter<HomeState> emit) {
    print('add cart tapped');
    wishlistItems.add(event.clickedProduct);
    emit(HomeItemWishListedActionState());
  }

  FutureOr<void> addToCartEvent(AddToCartEvent event, Emitter<HomeState> emit) {
    print('add wish tapped');
    cartlistItems.add(event.clickedProduct);
    emit(HomeItemCartedActionState());
  }

  FutureOr<void> navigateToCartEvent(NavigateToCartEvent event, Emitter<HomeState> emit) {
    print('cart Navigate tapped');
    emit(HomeNavigateToCartActionState());
  }

  FutureOr<void> navigaetToWishlistEvent(NavigateToWishlistEvent event, Emitter<HomeState> emit) {
    print('wish Navigate tapped');
    emit(HomeNavigateToWishlistActionState());
  }
}