import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/constrants.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  CoffeModel coffeModel;
  CoffeTile({Key key, this.coffeModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeModel.coffeShop,
                      style: CoffeTheme.textTheme.headline2
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      coffeModel.coffeName,
                      style: CoffeTheme.textTheme.headline1
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      coffeModel.description,
                      style: CoffeTheme.textTheme.headline3
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    coffeModel.price.toString(),
                    style: CoffeTheme.textTheme.headline1
                        .copyWith(color: Colors.black),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        // cubit.addFavoriteCoffees(coffeModel);
                        // cubit.changeColorLike();
                      },
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
