import 'package:bloc_cart_app/features/Cart/Ui/cart_tile.dart';
import 'package:bloc_cart_app/features/Wishlist/Ui/wishlist_tile.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_bloc.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_event.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  WishlistBloc wishlistBloc=WishlistBloc();

  @override
  void initState() {
    // TODO: implement initState
    wishlistBloc.add(InitialWishlistEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<WishlistBloc,WishListState>(
     bloc: wishlistBloc, 
     listenWhen: (previous, current) => current is WishlistActionState,
     buildWhen: (previous, current) => current is !WishlistActionState,
     listener: (context,state){

     },
     builder: (context,state){
        switch(state.runtimeType){
          case WishlistSuccessState:
            final successState=state as WishlistSuccessState;
            return ListView.builder(
              itemCount: successState.wishList.length,
              itemBuilder:(context,index){
                return WishlistTile(productModel:successState.wishList[index], wishlistBloc: wishlistBloc);

              } );
          default:
          return Container();
        }
      }),
    );

  }
}