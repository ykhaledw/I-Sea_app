import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/firebase_options.dart';
import 'package:i_sea_app/pages/about_us_page.dart';
import 'package:i_sea_app/pages/activity_against_ocean.dart';
import 'package:i_sea_app/pages/confirm_page.dart';
import 'package:i_sea_app/pages/endangered_species.dart';
import 'package:i_sea_app/pages/explore_page.dart';
import 'package:i_sea_app/pages/home_page.dart';
import 'package:i_sea_app/pages/report_page.dart';
import 'package:i_sea_app/pages/thank_you_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ISea());
}

class ISea extends StatelessWidget {
  const ISea({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        ExplorePage.id: (context) => const ExplorePage(),
        AboutUsPage.id: (context) => const AboutUsPage(),
        ReportPage.id: (context) => ReportPage(),
        ConfirmPage.id: (context) => const ConfirmPage(),
        ThankYouPage.id: (context) => const ThankYouPage(),
        ActivityAgainstOceanPage.id: (context) =>
            const ActivityAgainstOceanPage(),
        EndangeredSpeciesPage.id: (context) => const EndangeredSpeciesPage(),
      },
      theme: ThemeData(
        primarySwatch: kPrimaryMaterialColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}
