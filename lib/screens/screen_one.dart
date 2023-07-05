import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_app/models/dog_model.dart';
import 'package:http/http.dart' as http;

class RandomDogImageScreen extends StatefulWidget {
  final Future<String> imageString;

  const RandomDogImageScreen({super.key, required this.imageString});

  @override
  State<RandomDogImageScreen> createState() => _RandomDogImageScreenState();
}

class _RandomDogImageScreenState extends State<RandomDogImageScreen> {
  late Future<String> dogNetworkImage;

  @override
  void initState() {
    // TODO: implement initState
    dogNetworkImage = widget.imageString;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder<String>(
              future: dogNetworkImage,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Image.network(snapshot.data!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
            InkWell(
              onTap: () {
                setState(() {
                  dogNetworkImage = fetchDogImageAgain();
                });
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> fetchDogImageAgain() async {
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
}
