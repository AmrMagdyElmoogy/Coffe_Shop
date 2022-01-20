import 'package:coffe_shop/Data/coffe_model.dart';
import 'package:coffe_shop/Presentation/Widgets/coffe_container_model.dart';
import 'package:coffe_shop/constrants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  List<CoffeModel> coffes = [
    CoffeModel(
        id: 1,
        coffeShop: 'CofeeShop\'s',
        coffeName: 'Caffe Misto',
        img: 'assets/images/index.png',
        description:
            'Our dark, rich espresso balanced with streamed milk and a light layer of foam.',
        price: '\$4.99',
        rate: 4.2),
    CoffeModel(
        id: 2,
        coffeShop: 'BrownHouse\'s',
        coffeName: 'Caffe Lesso',
        img: 'assets/images/index.png',
        description:
            'Our dark, rich espresso balanced with streamed milk and a light layer of foam.',
        price: '\$3.99',
        rate: 4.9),
    CoffeModel(
        id: 3,
        coffeShop: 'CofeeShop\'s',
        coffeName: 'Caffe Misto',
        img: 'assets/images/index.png',
        description:
            'Our dark, rich espresso balanced with streamed milk and a light layer of foam.',
        price: '\$6.99',
        rate: 4.2),
    CoffeModel(
        id: 4,
        coffeShop: 'CofeeShop\'s',
        coffeName: 'Caffe Misto',
        img: 'assets/images/index.png',
        description:
            'Our dark, rich espresso balanced with streamed milk and a light layer of foam.',
        price: '\$10.99',
        rate: 4.2),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Welcome, Amr',
                    style: CoffeTheme.textTheme.headline1,
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1477417206770241538/P_YrBs3x_400x400.jpg'),
                  ),
                ],
              ),
              Container(
                width: 250,
                child: Text(
                  'Let\'s select the best taste for your next coffe break!',
                  style: CoffeTheme.textTheme.headline3,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Taste of the weeks',
                style: CoffeTheme.textTheme.headline2,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        CoffeContainerModel(coffes[index]),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 5,
                        ),
                    itemCount: coffes.length),
              ),
              Text(
                'Explore more',
                style: CoffeTheme.textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    12,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/coffeshop.jpg'),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              child: Text(
                                'Mocha',
                                style: CoffeTheme.textTheme.headline2
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
