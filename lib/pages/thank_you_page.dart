import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/home_page.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  static String id = 'ThankYouPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i sea'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Text(
              'Thank you for your cooperation!',
              style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            Text(
              'شكراً لتعاونك معنا!',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
              textDirection: TextDirection.rtl,
            ),
            Container(
              height: 270,
              width: 270,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/thanks.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'We will check your report then',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            Text(
              'contact you as soon as possible.',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryColor,
                fontFamily: 'Cairo',
              ),
            ),
            Text(
              'سوف نتواصل معك فى اقرب',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
                fontFamily: 'Cairo',
              ),
              textDirection: TextDirection.rtl,
            ),
            Text(
              'وقت بعد فحص إبلاغك.',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
                fontFamily: 'Cairo',
              ),
              textDirection: TextDirection.rtl,
            ),
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomePage.id, (route) => false);
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
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
