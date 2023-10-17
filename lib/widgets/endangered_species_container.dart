import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';

class CustomeCategoryCard extends StatelessWidget {
  const CustomeCategoryCard(
      {super.key,
      required this.image,
      required this.name,
      required this.details,
      required this.detailstoo});

  final String image;
  final String name;
  final String details;
  final String detailstoo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Text(
              '     $name',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
            Row(
              children: [
                Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Most Existing: $details',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor,
                          fontFamily: 'Cairo',
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'How dangerous: $detailstoo',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor,
                          fontFamily: 'Cairo',
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
