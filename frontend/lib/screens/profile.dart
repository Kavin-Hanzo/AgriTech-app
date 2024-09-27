// frontend/lib/screens/profile.dart
import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final String username;
  final String location;
  final String description;

  ProfileScreen(
      {required this.username,
      required this.location,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProfileCard(
                username: username,
                location: location,
                description: description),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Define action for Sales
                  },
                  child: Text('SALES'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Define action for Cow
                  },
                  child: Text('COW'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    textStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Comment',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (text) {
                // Handle comment submission
                print("Comment: $text");
              },
            )
          ],
        ),
      ),
    );
  }
}
