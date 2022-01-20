import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/Presentation/Widgets/coffe_ingredient.dart';
import 'package:flutter/material.dart';

import '../../constrants.dart';

class CoffeDetails extends StatelessWidget {
  final CoffeModel coffeModel;
  CoffeDetails({Key key, this.coffeModel}) : super(key: key);
  final List<String> images = [
    'assets/images/icons8-water-80.png',
    'assets/images/icons8-coffee-beans-100.png',
    'assets/images/icons8-sugar-cube-200.png',
    'assets/images/icons8-nut-100.png',
    'assets/images/icons8-leaves-96.png',
    'assets/images/icons8-topping-150.png',
  ];
  final List<Color> colors = [
    Colors.blueAccent,
    TextColor,
    Colors.red[300],
    Colors.green,
    Colors.teal,
    Colors.yellowAccent,
  ];
  final List<String> texts = [
    'Water',
    'Brewed Espresso',
    'Sugar',
    'Toffee Nut Syrup',
    'Natural Flavors',
    'Vanilla Syrup',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DetailsBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      coffeModel.coffeName,
                      style: CoffeTheme.textTheme.headline2
                          .copyWith(color: Colors.white, fontSize: 35),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 300,
                  child: Text(
                    coffeModel.description,
                    style: CoffeTheme.textTheme.headline3
                        .copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black.withOpacity(0.6),
                      child: Text(
                        coffeModel.rate.toString(),
                        style: CoffeTheme.textTheme.headline2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: DetailsBackgroundColor,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1477417206770241538/P_YrBs3x_400x400.jpg'),
                              ),
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: DetailsBackgroundColor,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1477417206770241538/P_YrBs3x_400x400.jpg'),
                              ),
                            ),
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: DetailsBackgroundColor,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1477417206770241538/P_YrBs3x_400x400.jpg'),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '+27 more',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Preparation time',
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '5min',
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(color: Colors.grey),
                        ),
                        sperator(),
                        Text(
                          'Ingredients',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          height: 170,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => IngredientItem(
                                    name: texts[index],
                                    myColor: colors[index],
                                    imagePath: images[index],
                                  ),
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 5),
                              itemCount: images.length),
                        ),
                        sperator(),
                        Text(
                          'Nutrition Information',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Calories',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(
                                        color: Colors.grey[400],
                                      ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('250',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Calories',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(
                                        color: Colors.grey[400],
                                      ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('250',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Calories',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(
                                        color: Colors.grey[400],
                                      ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('250',
                                    style:
                                        Theme.of(context).textTheme.headline2),
                              ],
                            ),
                          ],
                        ),
                        sperator(),
                        Container(
                          width: double.infinity,
                          height: 50,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: TextColor,
                            ),
                            child: Text('Make Order',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sperator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[200],
      ),
    );
  }
}
