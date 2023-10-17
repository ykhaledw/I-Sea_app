import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/about_us_page.dart';
import 'package:i_sea_app/pages/confirm_page.dart';
import 'package:i_sea_app/pages/explore_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: const Text(
          'i sea',
          style: TextStyle(fontSize: 24, fontFamily: 'Roboto'),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Container(
              height: 165,
              child: Drawer(
                backgroundColor: kPrimaryColor,
                elevation: 0,
                width: 190,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/send_report.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Save The Oceans',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const ConfirmPage();
                            },
                          ),
                        );
                      },
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/about_us.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: const Text(
                        'About App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const AboutUsPage();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawerScrimColor: Colors.white.withOpacity(0.2),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/-5834745829787812458_121-removebg-preview.png',
                  height: 250,
                  width: 250,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Together to save the marine life.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff6E9ACA),
                    fontFamily: 'Eczar',
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ExplorePage();
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.transparent,
                    ),
                    child: Image.asset(
                      'assets/images/IMG_20231005_234048.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff6E9ACA),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
