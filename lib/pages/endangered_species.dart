import 'package:flutter/material.dart';
import 'package:i_sea_app/widgets/endangered_species_container.dart';

class EndangeredSpeciesPage extends StatelessWidget {
  const EndangeredSpeciesPage({super.key});

  static String id = 'Endangered Species';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Endangered Species',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
      body: ListView(
        physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
        children: const [
          Column(
            children: [
              CustomeCategoryCard(
                name: 'Vaquita dolphin',
                image: 'assets/images/1.jpg',
                details:
                    'The northern gulf of California, Mexico, Coastal waters.',
                detailstoo:
                    'Not dangerous they\'re shy and avoid human interaction.',
              ),
              CustomeCategoryCard(
                image: 'assets/images/2.jpg',
                name: 'Sea turtles',
                details:
                    'In the world\'s ocean like green turtle inhabit in coastal areas and seagrass meadows',
                detailstoo: 'peaceful creatures',
              ),
              CustomeCategoryCard(
                image: 'assets/images/3.jpg',
                name: 'Manta',
                details:
                    'Pacific ocean, mideterian sea, coastal areas including lagoons, coral reefs',
                detailstoo:
                    'They are gentle and curios swimming with them is an awesome experience',
              ),
              CustomeCategoryCard(
                image: 'assets/images/4.jpg',
                name: 'Dugong',
                details:
                    'Coastal waters in the worm tropical regions of India and Pacific ocean',
                detailstoo:
                    'Gentle, exhibit aggressive behaviour unless threatened',
              ),
              CustomeCategoryCard(
                image: 'assets/images/5.jpg',
                name: 'Cheilinus undulatus',
                details: 'Coral reefs, move from east Africa to Pacific ocean',
                detailstoo: 'Don\'t pose adirect threat',
              ),
              CustomeCategoryCard(
                image: 'assets/images/6.jpg',
                name: 'Sphyrnidae',
                details:
                    'Can be found near coastal areas and offshore waters, contintual shelves and sea amounts',
                detailstoo:
                    'Hummerhead sharks attack on human are rare, due to confusion they attack human as food source',
              ),
              CustomeCategoryCard(
                image: 'assets/images/8.jpg',
                name: 'Sea anomenes',
                details:
                    'Are found in oceans all around the world from shallow coastal to deap sea',
                detailstoo:
                    'Some of them cause mild to moderate discomfort or irritation while contact with human',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
