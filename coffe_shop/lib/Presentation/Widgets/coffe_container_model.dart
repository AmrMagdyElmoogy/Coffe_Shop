import 'package:coffe_shop/Business_Logic/Cubit/app_cubit.dart';
import 'package:coffe_shop/Business_Logic/Cubit/app_states.dart';
import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/Presentation/Screens/coffe_details.dart';
import 'package:coffe_shop/Presentation/Widgets/showBottomSheet.dart';
import 'package:coffe_shop/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared_perfs.dart';

class CoffeContainerModel extends StatefulWidget {
  final CoffeModel coffeModel;
  const CoffeContainerModel(this.coffeModel);

  @override
  _CoffeContainerModelState createState() => _CoffeContainerModelState();
}

class _CoffeContainerModelState extends State<CoffeContainerModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          bool isNull = SharedPerfs.getValue(widget.coffeModel.id.toString());
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CoffeDetails(
                        coffeModel: widget.coffeModel,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.coffeModel.coffeShop,
                          style: CoffeTheme.textTheme.headline2
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.coffeModel.coffeName,
                          style: CoffeTheme.textTheme.headline1
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.coffeModel.description,
                          style: CoffeTheme.textTheme.headline3
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.coffeModel.price.toString(),
                              style: CoffeTheme.textTheme.headline1
                                  .copyWith(color: Colors.black),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: IconButton(
                                onPressed: () {
                                  if (SharedPerfs.getValue(
                                      widget.coffeModel.id.toString())) {
                                    SharedPerfs.removeValue(
                                        widget.coffeModel.id.toString());
                                    cubit.removeLike(widget.coffeModel.id);
                                  } else {
                                    SharedPerfs.setValue(
                                        widget.coffeModel.id.toString(), true);
                                    cubit.addFavoriteCoffees(widget.coffeModel);
                                  }
                                },
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  color: SharedPerfs.getValue(
                                          widget.coffeModel.id.toString())
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                height: 50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return ShowBottomSheetScreen();
                        },
                      );
                    },
                    child: Text(
                      'Order Now',
                      style: CoffeTheme.textTheme.headline2
                          .copyWith(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: TextColor,
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
