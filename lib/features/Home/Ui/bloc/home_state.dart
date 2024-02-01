abstract class HomeState{

}

abstract class HomeActionState extends HomeState{

}

class HomeInitial extends HomeState{

}


class HomeLoadingState extends HomeState{

}

class HomeLoadingSuccessState extends HomeState{

}

class HomeExrrorState extends HomeState{

}



//actionstate

class HomeNavigateToWishlistActionState extends HomeActionState{

}

class HomeNavigateToCartActionState extends HomeActionState{
  
}