import 'dart:async';

import 'package:bloc_cart_app/data/wishlist_items.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_event.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistBloc extends Bloc<WishlistEvent,WishListState>{
  WishlistBloc():super(WishlistInitial()){
    on<InitialWishlistEvent>(initialWishlistEvent);
    on<RemoveWishlistEvent>(removeWishlistEvent);
  }


  FutureOr<void> initialWishlistEvent(InitialWishlistEvent event,Emitter<WishListState>emit){
    emit(WishlistSuccessState(wishList:wishlistItems ));
  }

  FutureOr<void> removeWishlistEvent(RemoveWishlistEvent event,Emitter<WishListState>emit){
    wishlistItems.remove(event.wishlistModel);
    emit(WishlistSuccessState(wishList: wishlistItems));
  }
}