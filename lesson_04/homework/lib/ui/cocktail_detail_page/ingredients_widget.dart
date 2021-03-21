import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homework/models/models.dart';
import 'package:homework/res/application_colors.dart';
import 'package:homework/res/strings.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget(this.ingredients, {Key key}) : super(key: key);

  final Iterable<IngredientDefinition> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Text(
            Strings.ingredients,
            style: TextStyle(
                color: ApplicationColors.ingredientTitle, fontSize: 16),
          ),
        ),
      ]..addAll(
          ingredients.map((e) => _ingredientItem(e.ingredientName, e.measure))),
    );
  }
}

Widget _ingredientItem(String name, String value) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            decoration: TextDecoration.underline,
            color: Colors.white),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14, color: Colors.white),
        )
      ],
    )
  );
}
