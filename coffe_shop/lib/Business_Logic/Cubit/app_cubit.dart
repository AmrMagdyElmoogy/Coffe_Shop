import 'package:bloc/bloc.dart';
import 'package:coffe_shop/Business_Logic/Cubit/app_states.dart';
import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/Presentation/Screens/favorities_coffe.dart';
import 'package:coffe_shop/Presentation/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<CoffeModel> favoriteCoffees = [];

  int counter = 0;
  List<Widget> screens = [
    Home(),
    FavoritiesCoffe(),
  ];

  void changeSelectedTap(int index) {
    currentIndex = index;
    emit(ChangeSelectedTab());
  }

  void addFavoriteCoffees(CoffeModel coffeModel) {
    if (!favoriteCoffees.contains(coffeModel)) {
      favoriteCoffees.add(coffeModel);
      emit(FavoriteCoffeeAdded());
    }
  }

  void removeLike(int index) {
    favoriteCoffees.removeAt(index - 1);
    emit(FavoriteCoffeeRemoved());
  }

  void increaseCounter() {
    counter++;
    emit(IncreaseCounter());
  }

  void decreaseCounter() {
    counter--;
    emit(DecreaseCounter());
  }
}
