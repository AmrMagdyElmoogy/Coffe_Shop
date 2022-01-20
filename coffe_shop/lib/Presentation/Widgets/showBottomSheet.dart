import 'package:flutter/material.dart';

import '../../constrants.dart';

class ShowBottomSheetScreen extends StatefulWidget {
  const ShowBottomSheetScreen({Key key}) : super(key: key);

  @override
  _ShowBottomSheetScreenState createState() => _ShowBottomSheetScreenState();
}

class _ShowBottomSheetScreenState extends State<ShowBottomSheetScreen> {
  bool isColdOrHot = true;
  int selectCup = 1;
  double initalPrice = 9.50;
  int selectCubesOfSugar = 0;
  int selectCubesOfCream = 0;
  int selectCubesOfIce = 0;
  int counter = 0;
  String size = "M";
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Temperature',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        children: [
                          ChoiceChip(
                            label: Text('Hot'),
                            selected: !isColdOrHot,
                            backgroundColor: Colors.grey[300],
                            selectedColor: TextColor,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(color: Colors.white),
                            onSelected: (select) {
                              setState(() {
                                isColdOrHot = false;
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('Cold'),
                            selected: isColdOrHot,
                            backgroundColor: Colors.grey[300],
                            selectedColor: TextColor,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(color: Colors.white),
                            onSelected: (select) {
                              setState(() {
                                isColdOrHot = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quantity',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                counter--;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: priceColor,
                              radius: 20,
                              child: Center(
                                child: Icon(Icons.minimize_rounded,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            counter.toString(),
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                counter++;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: priceColor,
                              radius: 20,
                              child: Center(
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              sperator(),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text('Cup',
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            //edit this
                            width: 76,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    selectCup.toString(),
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  PopupMenuButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(
                                          Icons.arrow_drop_down_circle_rounded),
                                      onSelected: (selected) {
                                        setState(() {
                                          selectCup = selected;
                                        });
                                      },
                                      itemBuilder: (context) => <PopupMenuItem>[
                                            PopupMenuItem(
                                              value: 1,
                                              child: Text(
                                                '1',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: 2,
                                              child: Text(
                                                '2',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: 3,
                                              child: Text(
                                                '3',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: 4,
                                              child: Text(
                                                '4',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                            ),
                                          ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text('Size',
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            //edit this
                            width: 60,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    size,
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  PopupMenuButton(
                                      padding: EdgeInsets.zero,
                                      onSelected: (selected) {
                                        setState(() {
                                          size = selected;
                                        });
                                      },
                                      itemBuilder: (context) => <PopupMenuItem>[
                                            PopupMenuItem(
                                              child: Text(
                                                'S',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                              value: 'S',
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                'M',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                              value: 'M',
                                            ),
                                            PopupMenuItem(
                                              child: Text(
                                                'L',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                              ),
                                              value: 'L',
                                            ),
                                          ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              sperator(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          width: 50,
                          height: 50,
                          image: AssetImage(
                              'assets/images/icons8-sugar-cube-200.png'),
                          fit: BoxFit.cover),
                      Text(
                        'Sugar',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Colors.grey[300],
                            ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfSugar--;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.minimize_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          selectCubesOfSugar.toString() + ' Cubes',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfSugar++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          width: 50,
                          height: 50,
                          image: AssetImage(
                              'assets/images/icons8-sugar-cube-200.png'),
                          fit: BoxFit.cover),
                      Text(
                        'Sugar',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Colors.grey[300],
                            ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfIce--;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.minimize_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          selectCubesOfIce.toString() + ' Cubes',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfIce++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          width: 50,
                          height: 50,
                          image: AssetImage(
                              'assets/images/icons8-sugar-cube-200.png'),
                          fit: BoxFit.cover),
                      Text(
                        'Sugar',
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Colors.grey[300],
                            ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfCream--;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.minimize_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          selectCubesOfCream.toString() + ' Cubes',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectCubesOfCream++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: priceColor,
                            radius: 20,
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              sperator(),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Total',
                          style: Theme.of(context).textTheme.headline2),
                      Text('\$' + initalPrice.toString(),
                          style: Theme.of(context).textTheme.headline2.copyWith(
                                color: priceColor,
                              )),
                    ],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 50,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                'Order Done',
                              ),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: TextColor,
                        ),
                        child: Text('Place Order',
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
