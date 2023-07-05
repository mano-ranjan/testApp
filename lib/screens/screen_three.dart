import 'package:flutter/material.dart';
import 'package:test_app/models/profile_data_model.dart';

class ProfileScreen extends StatefulWidget {
  final Future<ProfileDataModelClass> profileData;

  const ProfileScreen({super.key, required this.profileData});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ProfileDataModelClass>(
        future: widget.profileData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data!.results[0].name.title));
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
