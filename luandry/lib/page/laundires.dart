import 'package:flutter/material.dart';
import 'package:luandry/models/companies.dart';

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
