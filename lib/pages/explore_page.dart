import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/activity_against_ocean.dart';
import 'package:i_sea_app/pages/endangered_species.dart';
import 'package:i_sea_app/widgets/custom_explore_container.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  static String id = 'ExplorePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Explore',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              'Explore more !',
              style: TextStyle(
                  fontSize: 35, fontFamily: 'Eczar', color: kPrimaryColor),
            ),
            const Spacer(
              flex: 1,
            ),
            CustomeExploreContainer(
              image: 'assets/images/activity_against_ocean.png',
              firstTitle: 'Activity Against',
              secondTitle: 'Oceans',
              onTap: () {
                Navigator.pushNamed(context, ActivityAgainstOceanPage.id);
              },
            ),
            const Spacer(
              flex: 2,
            ),
            CustomeExploreContainer(
              image: 'assets/images/endangered_species.png',
              firstTitle: 'Endangered',
              secondTitle: 'Species',
              onTap: () {
                Navigator.pushNamed(context, EndangeredSpeciesPage.id);
              },
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
