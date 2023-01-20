

import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final String movieImagePath;


  MovieTile(
      {required this.movieImagePath,
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 170,
        decoration: BoxDecoration(

            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            //moviee image
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    movieImagePath,
                    width: 150,
                    fit: BoxFit.fill,
                  )),
            ),
            //moviee name and description

            //moviee prices
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(Icons.add,color: Colors.black,)),


          ],
        ),
      ),
    );
  }
}
