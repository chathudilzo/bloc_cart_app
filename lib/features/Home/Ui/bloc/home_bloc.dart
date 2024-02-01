import 'dart:async';

import 'package:bloc_cart_app/features/Home/Ui/bloc/home_event.dart';
import 'package:bloc_cart_app/features/Home/Ui/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc():super(HomeInitial()){
    on<AddToWishListEvent>(addToWishlistEvent);
    on<AddToCartEvent>(addToCartEvent);
    on<NavigateToCartEvent>(navigateToCartEvent);
    on<NavigateToWishlistEvent>(navigaetToWishlistEvent);
  }


  

  FutureOr<void> addToWishlistEvent(AddToWishListEvent event, Emitter<HomeState> emit) {
    print('add cart tapped');
  }

  FutureOr<void> addToCartEvent(AddToCartEvent event, Emitter<HomeState> emit) {
    print('add wish tapped');
  }

  FutureOr<void> navigateToCartEvent(NavigateToCartEvent event, Emitter<HomeState> emit) {
    print('cart Navigate tapped');
  }

  FutureOr<void> navigaetToWishlistEvent(NavigateToWishlistEvent event, Emitter<HomeState> emit) {
    print('wish Navigate tapped');
  }
}