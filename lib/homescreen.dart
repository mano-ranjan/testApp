import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/models/dog_model.dart';
import 'package:test_app/models/profile_data_model.dart';
import 'package:test_app/screens/screen_one.dart';
import 'package:test_app/screens/screen_three.dart';
import 'package:test_app/screens/screen_two.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var channel = const MethodChannel("enableBT");

  enableBT() {
    channel.invokeMethod("enableBT");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 50,
                ),
                child: Text(
                  "Hi FinInfocom!!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RandomDogImageScreen(
                                  imageString: fetchDogImage(),
                                )));
                      },
                      child: buttonsWidget("Random dog images Screen"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) =>
                        //         const EnableBluetoothScreen()));
                        enableBT();
                      },
                      child: buttonsWidget("Enable Bluetooth"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                      onTap: () {
                        Future<ProfileDataModelClass> profileData =
                            fetchProfileData();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                                  profileData: fetchProfileData(),
                                )));
                      },
                      child: buttonsWidget("Profile Screen"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<ProfileDataModelClass> fetchProfileData() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    if (response.statusCode == 200) {
      ProfileDataModelClass profileDataModelClass =
          ProfileDataModelClass.fromJson(jsonDecode(response.body));
      return profileDataModelClass;
    } else {
      throw Exception('Failed');
    }
  }

  Future<String> fetchDogImage() async {
    final response =
        await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    if (response.statusCode == 200) {
      DogModelClass dogModelClass =
          DogModelClass.fromJson(jsonDecode(response.body));
      return dogModelClass.message;
    } else {
      throw Exception('Failed');
    }
  }

  Widget buttonsWidget(String title) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue.shade300,
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
