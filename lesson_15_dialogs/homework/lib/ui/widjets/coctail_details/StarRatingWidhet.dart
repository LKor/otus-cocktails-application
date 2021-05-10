import 'package:flutter/material.dart';
import 'package:homework/ui/style/colors.dart';

class StarRatingWidjet extends StatelessWidget {
  final int stars;
  final int maxRatingCount = 5;
  const StarRatingWidjet({required this.stars});

  @override
  Widget build(BuildContext context) {
    List<int> _maxStars = List<int>.generate(maxRatingCount, (index) => index);

    return Container(
      padding: const EdgeInsets.fromLTRB(35, 40, 35, 10),
      color: CustomColors.filter_item_color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            _maxStars.length, (index) => StarRatingItemWidget(index < stars)),
      ),
    );
  }
}

class StarRatingItemWidget extends StatelessWidget {
  const StarRatingItemWidget(
    this.isLiked, {
    Key? key,
  }) : super(key: key);

  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColors.filter_item_selected_color),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Icon(
              Icons.star,
              color: _getIconColor(),
            ),
          )),
    );
  }

  Color _getIconColor() {
    if (isLiked) {
      return Colors.white;
    } else {
      return CustomColors.background;
    }
  }
}
