import 'package:coffe_shop/Business_Logic/Cubit/app_cubit.dart';
import 'package:coffe_shop/Business_Logic/Cubit/app_states.dart';
import 'package:coffe_shop/Presentation/Widgets/coffe_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritiesCoffe extends StatelessWidget {
  const FavoritiesCoffe({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var favorite = AppCubit.get(context).favoriteCoffees;
        return favorite != null 
            ? ListView.builder(
                itemBuilder: (context, index) => CoffeTile(
                      coffeModel: favorite[index],
                    ),
                itemCount: favorite.length)
            : Center(
                child: Text(
                  'No Favorite Coffe Until Now!',
                  style: Theme.of(context).textTheme.headline1,
                ),
              );
      },
    );
  }
}
