import 'package:coffe_shop/Business_Logic/Cubit/app_cubit.dart';
import 'package:coffe_shop/Business_Logic/Cubit/app_states.dart';
import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/Presentation/Screens/favorities_coffe.dart';
import 'package:coffe_shop/Presentation/Screens/home.dart';
import 'package:coffe_shop/Presentation/Widgets/coffe_container_model.dart';
import 'package:coffe_shop/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeHome extends StatelessWidget {
  const CoffeHome();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: IndexedStack(
            children: cubit.screens,
            index: cubit.currentIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeSelectedTap(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'Likes'),
            ],
          ),
        );
      },
    );
  }
}
