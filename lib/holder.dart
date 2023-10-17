/*import 'package:flutter/material.dart';
import 'package:i_sea_app/constants.dart';
import 'package:i_sea_app/pages/thank_you_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

class ReportPage extends StatefulWidget {
  ReportPage({Key? key}) : super(key: key);

  static String id = 'ReportPage';

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String? name;
  String? email;
  String? phoneNumber;
  String? location;
  String? description;

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

  Future<void> submitReport() async {
    if (formKey.currentState?.validate() ?? false) {
      // Assign values to variables
      name = nameController.text;
      email = emailController.text;
      phoneNumber = numberController.text;
      location = locationController.text;
      description = descriptionController.text;

      // Add data to Firestore
      try {
        await FirebaseFirestore.instance.collection('reports').add({
          'name': name,
          'email': email,
          'phoneNumber': phoneNumber,
          'location': location,
          'description': description,
          // Add more fields as needed
        });
        Navigator.pushNamedAndRemoveUntil(
            context, ThankYouPage.id, (route) => false);
      } catch (e) {
        print('Error adding report to Firestore: $e');
      }
    }
  }

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
                            controller: nameController,
                            // ...
                            // Rest of your TextFormField widgets
                            // ...

                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: submitReport,
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/
