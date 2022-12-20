import 'package:flutter/material.dart';
import 'package:luandry/models/companies.dart';
import 'package:luandry/models/pagesreview.dart';
import 'package:luandry/page/places.dart';
import 'package:luandry/page/settings.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var companies = [
    Companies(
        title: 'The Grand Arabian World Laundry Co.',
        subtitle: '8:00 AM - 1:00 PM\n4:00 PM - 9:00 AM\n   Friday Closed',
        image: 'assets/images/TheGrandArabianWorldLaundry.png',
        rating: 4.4,
        deliveryTime: "120 min"),
    Companies(
        title: 'Clean Queen Laundry',
        subtitle: '8:00 AM - 1:30 PM \n4:00 PM - 10:00 AM \n   Friday Closed',
        image: 'assets/images/CleanQueen.png',
        rating: 3.9,
        deliveryTime: "30 min"),
    Companies(
        title: 'Wash & Dry Laundry',
        subtitle: '8:00 AM - 10:00 PM',
        image: 'assets/images/WashAndDry.png',
        rating: 5,
        deliveryTime: "15 min"),
    Companies(
        title: 'The Laundry Room',
        subtitle: '8:00 AM - 11:00 PM',
        image: 'assets/images/TheLaundryRoom.png',
        rating: 4.5,
        deliveryTime: "60 min"),
    Companies(
        title: 'Jeeves Laundry',
        subtitle: '8:00 AM - 5:00 PM',
        image: 'assets/images/Jeeves.png',
        rating: 4.4,
        deliveryTime: "30 min"),
    Companies(
        title: 'Laundry Clean Queen',
        subtitle: '8:00AM - 1:00PM\n4:00PM - 9:00AM\nFriday 5:00PM-10:00PM',
        image: 'assets/images/CleanQueen.png',
        rating: 3.0,
        deliveryTime: "15 min"),
    Companies(
        title: 'One Stop Laundry',
        subtitle: '10:00 AM - 1:00 PM\nFriday Closed',
        image: 'assets/images/OneStop.png',
        rating: 4.5,
        deliveryTime: "90 min"),
    Companies(
        title: 'Fabric Laundry Al-Reggai',
        subtitle: 'Open 24 Hours',
        image: 'assets/images/Fabric.png',
        rating: 4.0,
        deliveryTime: "60 min"),
    Companies(
        title: 'Al-Tuhama Laundry',
        subtitle: 'Open 24 Hours',
        image: 'assets/images/Tuhama.png',
        rating: 4.1,
        deliveryTime: "35 min"),
    Companies(
        title: 'Two Hours Laundry',
        subtitle: '8:00 AM - 10:00 PM\Thursday Closed',
        image: 'assets/images/1mounth.png',
        rating: 5,
        deliveryTime: "50 min"),
    Companies(
        title: 'Pro Clean',
        subtitle: '8:00 AM - 1:00 PM',
        image: 'assets/images/proclean.png',
        rating: 4.2,
        deliveryTime: "30 min"),
    Companies(
        title: 'Just Clean Laundry',
        subtitle: 'Open 24 Hours',
        image: 'assets/images/justclean.png',
        rating: 2.3,
        deliveryTime: "20 min"),
    Companies(
        title: 'White Master Laundry',
        subtitle: '8:00 AM - 1:00 PM',
        image: 'assets/images/whitemaster.png',
        rating: 4.8,
        deliveryTime: "25 min"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            floating: true,
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
                  "Kuwait",
                  style: TextStyle(fontSize: 20, color: Colors.black),
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
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.81,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    PageView.builder(
                      itemCount: demoPics.length,
                      itemBuilder: (context, index) => Image.asset(
                        demoPics[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Partners",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  companies.length,
                  (currentIndex) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Laundries_All(
                      companies: [],
                      title: companies[currentIndex].title,
                      subtitle: companies[currentIndex].subtitle,
                      image: companies[currentIndex].image,
                      rating: companies[currentIndex].rating,
                      deliveryTime: companies[currentIndex].deliveryTime,
                      press: () {},
                      currentIndex: currentIndex,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: SliverPadding(
              padding: const EdgeInsets.all(2),
              sliver: SliverToBoxAdapter(
                child: Image.asset("assets/images/1mounth.png"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Picks",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  companies.length,
                  (currentIndex) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Laundries_All(
                      companies: [],
                      title: companies[currentIndex].title,
                      subtitle: companies[currentIndex].subtitle,
                      image: companies[currentIndex].image,
                      rating: companies[currentIndex].rating,
                      deliveryTime: companies[currentIndex].deliveryTime,
                      press: () {},
                      currentIndex: currentIndex,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Laundries_All extends StatelessWidget {
  const Laundries_All({
    Key? key,
    required this.companies,
    required this.currentIndex,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
  }) : super(key: key);

  final String title, subtitle, image, deliveryTime;
  final double rating;
  final VoidCallback press;

  final List<Companies> companies;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child:
                  Container(height: 60, width: 100, child: Image.asset(image)),
            ),
            const SizedBox(height: 2),
            Text(
              title,
              maxLines: 1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(rating.toString()),
                    ),
                    Spacer(),
                    Text("$deliveryTime min"),
                    Spacer(),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.grey,
                    ),
                    Spacer(),
                    Text("Free delivery"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndicatorDots extends StatelessWidget {
  const IndicatorDots({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.white10,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
