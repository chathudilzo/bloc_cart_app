import 'package:bloc_cart_app/features/Home/Ui/bloc/home_event.dart';
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
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
       
      },
      // listenWhen: (previous, current) {
        
      // },
      // buildWhen: (previous, current) {
        
      // },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bloc test Grocery app'),
            actions: [
              IconButton(onPressed: (){
                homeBloc.add(NavigateToWishlistEvent());
              }, icon: Icon(Icons.favorite_outlined)),
              IconButton(onPressed: (){
                homeBloc.add(NavigateToCartEvent());
              }, icon: Icon(Icons.shopping_bag))
            ],
          ),
        );
      },
    );
  }
}
