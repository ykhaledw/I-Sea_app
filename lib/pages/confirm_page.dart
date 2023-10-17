import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/explore_page.dart';
import 'package:i_sea_app/pages/report_page.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  static String id = 'ConfirmPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Send a Report',
          style: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/confirm.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            'Make sure that you have visited Explore',
            style: TextStyle(
                fontFamily: 'Cairo', fontSize: 18, color: kPrimaryColor),
          ),
          Text(
            'page for more accurate report.',
            style: TextStyle(
                fontFamily: 'Cairo', fontSize: 18, color: kPrimaryColor),
          ),
          Text(
            "تأكد من أنك قمت بزيارة صفحة 'Explore'",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontFamily: 'Cairo', fontSize: 18, color: kPrimaryColor),
          ),
          Text(
            'لمعرفة المزيد قبل ارسال هذا البلاغ.',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontFamily: 'Cairo', fontSize: 18, color: kPrimaryColor),
          ),
          const Spacer(
            flex: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ExplorePage.id);
                },
                child: Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ReportPage.id);
                },
                child: Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
