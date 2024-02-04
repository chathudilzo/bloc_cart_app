import 'dart:async';

import 'package:bloc_cart_app/data/cart_items.dart';
import 'package:bloc_cart_app/features/Cart/bloc/cart_event.dart';
import 'package:bloc_cart_app/features/Cart/bloc/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent,CartState>{
  CartBloc():super(CartInitial()){
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveEvent>(cartRemoveEvent);


    
  }

  FutureOr<void> cartInitialEvent(CartInitialEvent event,Emitter<CartState>emit){
    emit(CartSuccessState(cartItems: cartlistItems));
  }

  FutureOr<void> cartRemoveEvent(CartRemoveEvent event,Emitter<CartState>emit){
    cartlistItems.remove(event.cartModel);
    emit(CartSuccessState(cartItems: cartlistItems));
  }
}