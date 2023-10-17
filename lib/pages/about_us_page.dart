import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  static String id = 'AboutUsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'About Us',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              'wondering who are we?',
              style: TextStyle(
                  fontSize: 30, color: kPrimaryColor, fontFamily: 'Eczar'),
            ),
            Text(
              'I sea is a mobile application designed as a powerful tool to save endangered species in the oceans while raising awareness about the role of marine life in maintaining a healthy ecosystem.',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'App Features',
              style: TextStyle(
                  fontSize: 30, color: kPrimaryColor, fontFamily: 'Eczar'),
            ),
            Text(
              'Species Identification and Reporting',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            Text(
              'Visual tool for kids: like media and VR (soon).',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 220,
                  width: 220,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/about_us_icon.png',
                      ),
                      fit: BoxFit.cover,
                    ),
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
