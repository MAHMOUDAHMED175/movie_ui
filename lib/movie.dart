

import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final String movieImagePath;
  final String movieName;
  final String moviePrice;

  Movie(
      {required this.movieImagePath,
      required this.movieName,
      required this.moviePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 120,
        decoration: BoxDecoration(

            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //moviee image
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    movieImagePath,
                    width: 100,
                    fit: BoxFit.fill,
                  )),
            ),
            //moviee name and description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'From 10 best movie',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            //moviee prices
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(moviePrice),

                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.add)),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
