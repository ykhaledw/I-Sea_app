import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';

class CustomeExploreContainer extends StatelessWidget {
  const CustomeExploreContainer(
      {super.key,
      required this.image,
      required this.firstTitle,
      required this.secondTitle,
      required this.onTap});

  final String image;
  final String firstTitle;
  final String secondTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        height: 180,
        width: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
          image: DecorationImage(
            alignment: Alignment.centerRight,
            image: AssetImage(
              image,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstTitle,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 22,
              ),
            ),
            Text(
              secondTitle,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
