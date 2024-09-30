import 'dart:async';
import 'package:flutter/material.dart';
import 'package:treckify/pages/signup.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoOpacityAnimation;
  late Animation<double> _textOpacityAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the opacity animation for the logo (fades in)
    _logoOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Define the opacity animation for the app name and loading animation (fades in after the logo)
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    // Start the animation
    _controller.forward();

    // Navigate to the login page after a delay
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).push(_createRoute());
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Signup(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF141527), // Dark navy color
              Color(0xFF292B40), // Deep blue color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo animation
            FadeTransition(
              opacity: _logoOpacityAnimation,
              child: Image.asset("assets/images/tlogo.png"),
            ),
            const SizedBox(height: 20),
            // App name animation
            FadeTransition(
              opacity: _textOpacityAnimation,
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Trekify',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFD2F366),
                            fontFamily: 'goblin',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Let's Travel",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Loading animation
            FadeTransition(
              opacity: _textOpacityAnimation,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the animation controller
    super.dispose();
  }
}
