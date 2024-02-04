import 'package:bloc_cart_app/features/Cart/Ui/cart.dart';
import 'package:bloc_cart_app/features/Home/Ui/bloc/home_event.dart';
import 'package:bloc_cart_app/features/Home/Ui/product_tile_ui.dart';
import 'package:bloc_cart_app/features/Wishlist/Ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc=HomeBloc();

  @override
  void initState() {
    // TODO: implement initState
    homeBloc.add(HomeInitialEvent());
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
       if(state is HomeNavigateToCartActionState){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>CartPage())
        );
       }else if(state is HomeNavigateToWishlistActionState){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>WishlistPage()));
       }else if(state is HomeItemCartedActionState){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item added to the cart')));
       }else if(state is HomeItemWishListedActionState){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item added to the wishlist')));
       }
      },
       listenWhen: (previous, current)=>current is HomeActionState,
       buildWhen: (previous, current)=>current is !HomeActionState,
      builder: (context, state) {
        switch (state.runtimeType){
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case HomeLoadingSuccessState:
          final successState=state as HomeLoadingSuccessState;

            return Scaffold(
              appBar: AppBar(
                title: Text('Grocery App'),
                actions: [
                  IconButton(onPressed: (){
                    homeBloc.add(NavigateToWishlistEvent());
                  }, icon: Icon(Icons.favorite_outline)),
                  IconButton(onPressed: (){
                    homeBloc.add(NavigateToCartEvent());
                  }, icon: Icon(Icons.shopping_bag))
                ],
              ),
              body: ListView.builder(
                itemCount: successState.products.length,
                itemBuilder: (context,index){
                
                return ProductTile(productModel: successState.products[index],homeBloc: homeBloc,);
              }),
            );
          case HomeErrorState:
            return Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          default:
            return SizedBox();    

        }


      },
    );
  }
}


