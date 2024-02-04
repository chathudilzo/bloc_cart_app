import 'package:bloc_cart_app/features/Cart/bloc/cart_bloc.dart';
import 'package:bloc_cart_app/features/Home/Ui/bloc/home_event.dart';
import 'package:bloc_cart_app/features/Home/Ui/models/product_model.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_bloc.dart';
import 'package:bloc_cart_app/features/Wishlist/bloc/wishlist_event.dart';
import 'package:flutter/material.dart';

class WishlistTile extends StatelessWidget {
  const WishlistTile({super.key,required this.wishlistBloc,required this.productModel});

final WishlistBloc wishlistBloc;
final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(productModel.imgUrl),fit: BoxFit.contain)
            ),
          ),
          SizedBox(height: 10,),
          Text(productModel.name,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),

          Text(productModel.description),
          SizedBox(height: 10,),
          
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$: '+productModel.price.toString()),
              Row(
                children: [
                  IconButton(onPressed: (){
                    wishlistBloc.add(RemoveWishlistEvent(wishlistModel: productModel));
              }, icon: Icon(Icons.favorite)),
              IconButton(onPressed: (){
                //CartBloc().add(AddToCartEvent(clickedProduct: productModel));
              }, icon: Icon(Icons.shopping_bag_outlined))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}