import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/thank_you_page.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class ReportPage extends StatelessWidget {
  ReportPage({super.key});

  static String id = 'ReportPage';
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Please enter The required information',
                style: TextStyle(
                    color: kPrimaryColor, fontSize: 24, fontFamily: 'Eczar'),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '     Name',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 22,
                              fontFamily: 'Cairo'),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              hintStyle: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Roboto'),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15), // Remove the default border
                            ),
                            style: TextStyle(color: kPrimaryColor),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            }, // Set text color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '     Email',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 22,
                              fontFamily: 'Cairo'),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Your Email',
                              hintStyle: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Roboto'),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15), // Remove the default border
                            ),
                            style: TextStyle(color: kPrimaryColor),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            }, // Set text color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '     Number',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 22,
                              fontFamily: 'Cairo'),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Roboto'),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15), // Remove the default border
                            ),
                            style: TextStyle(color: kPrimaryColor),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your number';
                              }
                              return null;
                            }, // Set text color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '     Location',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 22,
                              fontFamily: 'Cairo'),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Country - City - Coast/Bay  - Beach ',
                              hintStyle: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Roboto'),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15), // Remove the default border
                            ),
                            style: TextStyle(color: kPrimaryColor),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'required field';
                              }
                              return null;
                            }, // Set text color
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          '     Endangered Species/Action Against Oceans',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18,
                            fontFamily: 'Cairo',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Describe what you see',
                              hintStyle: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Roboto'),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15), // Remove the default border
                            ),
                            style: TextStyle(color: kPrimaryColor),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'required field';
                              }
                              return null;
                            }, // Set text color
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '     Attachment',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontFamily: 'Cairo',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Color(
                                0xffE3E3E3), // Set the background color here
                            borderRadius: BorderRadius.circular(
                                40), // Optional: Add border radius
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text(
                                    'Send a pic. of what you see',
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    pickImage();
                                  },
                                  child: Text('choose image'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState?.validate() ?? false) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, ThankYouPage.id, (route) => false);
                    }
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
                        'Report',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> pickImage() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    // You have the picked image in pickedFile.path.
    // You can use this path to display the image or process it further.
    // Example: File imageFile = File(pickedFile.path);
  } else {
    // User canceled the image picker.
  }
}
