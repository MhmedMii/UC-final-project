import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:luandry/models/locations.dart';
import 'package:luandry/page/home.dart';
import 'package:luandry/page/settings.dart';

class places extends StatefulWidget {
  const places({super.key});

  @override
  State<places> createState() => _placesState();
}

var companies = [
  locations(
      title1: 'The Grand Arabian World Laundry',
      subtitle1: 'Fahaheel',
      image1: 'assets/images/JustWash.png',
      rating1: 2.5),
  locations(
      title1: 'Clean Queen Laundry',
      subtitle1: 'Salmiya',
      image1: 'assets/images/CleanQueen.png',
      rating1: 3.9),
  locations(
      title1: 'Wash & Dry Laundry',
      subtitle1: 'Hateen',
      image1: 'assets/images/WashAndDry.png',
      rating1: 2.5),
  locations(
      title1: 'The Laundry Room',
      subtitle1: 'Zahraa',
      image1: 'assets/images/TheLaundryRoom.png',
      rating1: 2.5),
  locations(
      title1: 'Jeeves Laundry',
      subtitle1: 'Zahraa',
      image1: 'assets/images/Jeeves.png',
      rating1: 2.5),
  locations(
      title1: 'Laundry Clean Queen',
      subtitle1: 'Jahraa',
      image1: 'assets/images/CleanQueen.png',
      rating1: 2.5),
  locations(
    title1: 'One Stop Laundry',
    subtitle1: 'Al-Adan',
    image1: 'assets/images/OneStop.png',
    rating1: 4.5,
  ),
  locations(
    title1: 'Fabric Laundry Al-Reggai',
    subtitle1: 'Sad Al-Abdullah',
    image1: 'assets/images/Fabric.png',
    rating1: 4.0,
  ),
  locations(
    title1: 'Al-Tuhama Laundry',
    subtitle1: 'Jaber Al-Ahmed',
    image1: 'assets/images/Tuhama.png',
    rating1: 4.1,
  ),
  locations(
    title1: 'Two Hours Laundry',
    subtitle1: 'Ghurnata',
    image1: 'assets/images/1mounth.png',
    rating1: 5,
  ),
  locations(
    title1: 'Pro Clean',
    subtitle1: 'North East Sulaibkhat',
    image1: 'assets/images/proclean.png',
    rating1: 4.2,
  ),
  locations(
    title1: 'Just Clean Laundry',
    subtitle1: 'Hsteen',
    image1: 'assets/images/justclean.png',
    rating1: 2.3,
  ),
  locations(
    title1: 'White Master Laundry',
    subtitle1: 'Al-Salam',
    image1: 'assets/images/whitemaster.png',
    rating1: 4.8,
  ),
];

class _placesState extends State<places> {
  int currentIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    if (index == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => homepage()));
    }
    if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => places()));
    }
    if (index == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settings()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          children: [
            Text(
              'Laundries UI Kit',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.black),
            ),
            Text(
              'Places',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Filter",
              style: TextStyle(color: Colors.lightBlue),
            ),
          ),
        ],
      ),
      // body: pages[currentIndex],

      body: Container(
        child: ListView.builder(
            itemCount: companies.length,
            itemBuilder: (context, index) {
              var subtitle = companies[index].subtitle1;
              var rating = companies[index].rating1;
              return ListTile(
                title: Text(companies[index].title1),
                subtitle: Text("$subtitle"),
                trailing: RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                leading: Container(
                  child: Image.asset(
                    companies[index].image1,
                  ),
                  height: 60,
                  width: 60,
                ),
                //if it is from network it will be image.network
                //if it is from computer it will be image.assets.the path
              );
            }),
      ),
    );
  }
}
