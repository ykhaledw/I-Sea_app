import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';

class CustomeSecondCategoryCard extends StatelessWidget {
  const CustomeSecondCategoryCard(
      {super.key, required this.title, required this.details});

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 28,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              details,
              style: TextStyle(color: kPrimaryColor, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
