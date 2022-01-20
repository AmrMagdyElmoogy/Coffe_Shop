import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final Color myColor;

  const IngredientItem({Key key, this.name, this.imagePath, this.myColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: myColor,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.only(left: 12),
          width: 90,
          child: Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headline2
                .copyWith(color: Colors.grey[400]),
          ),
        ),
      ],
    );
  }
}
