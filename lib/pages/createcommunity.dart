import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:treckify/pages/communities.dart'; // For using the blur effect

class Create_Community extends StatefulWidget {
  const Create_Community({super.key});

  @override
  State<Create_Community> createState() => _Create_CommunityState();
}

class _Create_CommunityState extends State<Create_Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background container
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFF141527),
          ),
          // Adding blur effect to the background
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blur effect
              child: Container(
                color: Colors.black.withOpacity(0), // Transparent color to allow blur effect
              ),
            ),
          ),
          // Foreground content
          Positioned(
            top: 180,
            left: 30,
            child: Material(
              elevation: 15,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 330,
                height: 380, // Increased height for more content
                decoration: BoxDecoration(
                  color: const Color(0xFF292B40),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create Community",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ibm",
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Community Name TextField
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Community Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Community Description TextField
                      TextField(
                        maxLines: 3, // Allowing multiple lines for description
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Community Description',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Row for Submit and Cancel buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle Submit action
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFD2F366),
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle Cancel action
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Communities())); // Close the current screen
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            ),
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
