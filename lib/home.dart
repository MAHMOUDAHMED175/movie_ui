

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'movie_tile.dart';
import 'movie_type.dart';
import 'movie.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //list of coffee types
  final List movie = [
    //coffee type,isSelected
    [
      'Foreigner',
      true,
    ],
    [
      'Action',
      false,
    ],
    [
      'Comic',
      false,
    ],
    [
      'Romantic',
      false,
    ],
    [
      'Arabic',
      false,
    ],
  ];

  // user tapped coffe type
  void movieTypeSelected(int index) {
    // this for make all selection false
    for (int i = 0; i < movie.length; i++) {
      movie[i][1] = false;
    }
    setState(() {
      movie[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding:  EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 28,
              ),
              label: ''),
        ]),
        body: Column(
          children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Find the best movie for you',
            style: GoogleFonts.bebasNeue(fontSize: 30),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Find your movie',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600))),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 50,
          child: ListView.builder(
            itemCount: movie.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return MovieType(
                  movieType: movie[index][0],
                  isSelected: movie[index][1],
                  onTap: () {
                    movieTypeSelected(index);
                  });
            },
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              MovieTile(
                  movieImagePath: 'assets/images/a.jpg',
                  ),
              MovieTile(
                  movieImagePath: 'assets/images/p.jpg',
                 ),
              MovieTile(
                  movieImagePath: 'assets/images/c.jpg',
                  ),
              MovieTile(
                  movieImagePath: 'assets/images/d.jpg',
                  ),
              MovieTile(
                  movieImagePath: 'assets/images/e.jpg',
                  ),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Expanded(
          child: ListView(

            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Movie(
                  movieImagePath: 'assets/images/a.jpg',
                  movieName: 'Foreigner',
                  moviePrice: '50'),
              Movie(
                  movieImagePath: 'assets/images/p.jpg',
                  movieName: 'Action',
                  moviePrice: '44'),
              Movie(
                  movieImagePath: 'assets/images/c.jpg',
                  movieName: 'Comic',
                  moviePrice: '45'),
              Movie(
                  movieImagePath: 'assets/images/d.jpg',
                  movieName: 'Romantic',
                  moviePrice: '40'),
              Movie(
                  movieImagePath: 'assets/images/e.jpg',
                  movieName: 'Action',
                  moviePrice: '60'),
            ],
          ),
        ),




          ],
        ),
    );
  }

}
