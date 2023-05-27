import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;

  StarRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.round()) {
          return Icon(
            Icons.star,
            color: Colors.yellow,
          );
        } else {
          return Icon(
            Icons.star_border,
            color: Colors.yellow,
          );
        }
      }),
    );
  }
}
