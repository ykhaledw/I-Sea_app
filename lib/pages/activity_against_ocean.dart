import 'package:flutter/material.dart';
import 'package:i_sea_app/widgets/activity_against_ocean.dart';

class ActivityAgainstOceanPage extends StatelessWidget {
  const ActivityAgainstOceanPage({super.key});

  static String id = 'ActivityAgainstOceans';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Activity Against Oceans',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: ListView(
        physics: const PageScrollPhysics(parent: BouncingScrollPhysics()),
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              CustomeSecondCategoryCard(
                title: 'Over fishing',
                details:
                    'Occurs when fish or other marine organisms are harvested at rates.',
              ),
              CustomeSecondCategoryCard(
                title: 'Habitat destruction',
                details: 'Such as coastal development dredging',
              ),
              CustomeSecondCategoryCard(
                title: 'Pollution',
                details: 'Industrial, agricultural, plastic waste',
              ),
              CustomeSecondCategoryCard(
                title: 'Climate change',
                details: 'Rising sea temperature as a result sea level rise.',
              ),
              CustomeSecondCategoryCard(
                title: 'Noise pollution',
                details: 'Under water noise from shipping.',
              ),
              CustomeSecondCategoryCard(
                title: 'Illegal fishing',
                details: 'Specifically the use of gillnets, which are nets.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
