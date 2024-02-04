import 'package:bloc_cart_app/features/Cart/Ui/cart_tile.dart';
import 'package:bloc_cart_app/features/Cart/bloc/cart_bloc.dart';
import 'package:bloc_cart_app/features/Cart/bloc/cart_event.dart';
import 'package:bloc_cart_app/features/Cart/bloc/cart_state.dart';
import 'package:bloc_cart_app/features/Home/Ui/product_tile_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartBloc cartbloc=CartBloc();
  
@override
  void initState() {
    // TODO: implement initState
    cartbloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Items'),
        
      ),
      body: BlocConsumer<CartBloc,CartState>(
        bloc: cartbloc,
       listener: (context,state){

       },
       listenWhen: (previous, current) =>current is CartActionState ,
       buildWhen: (previous, current) => current is !CartActionState,
       builder: (context,state){
          switch(state.runtimeType){
            case CartSuccessState:
              final successState=state as CartSuccessState;
              return ListView.builder(
                itemCount: successState.cartItems.length,
                itemBuilder: (context,index){
                  return CartTile(productModel: successState.cartItems[index],
                   cartBloc: cartbloc);
                });
            default:
              return Container();    
          }
       },
       ),
    );
  }
}