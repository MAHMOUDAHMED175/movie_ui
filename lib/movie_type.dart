import 'package:flutter/material.dart';

class MovieType extends StatelessWidget {
  final String movieType;
  final bool isSelected;
  final Function() onTap;

  MovieType(
      {required this.movieType, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          movieType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
