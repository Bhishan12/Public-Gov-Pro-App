import 'package:flutter/material.dart';
import 'package:publicgovpr/pages/auth_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust the duration as needed
    );

    // Create a fade-in animation for the image
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    // Start the animation
    _controller.forward();

    // Add a delay to simulate a loading process.
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the next screen after the splash screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AuthPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2196F3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Wrap the image with a FadeTransition
            FadeTransition(
              opacity: _animation,
              child: Container(
                height: 800,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Splass-screen.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Container(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Text(
            //         "Public Gov Pro",
            //         style: TextStyle(
            //           fontSize: 30,
            //           color: Color(0xFFFFFFFF),
            //           fontWeight: FontWeight.w900,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller to prevent memory leaks
    _controller.dispose();
    super.dispose();
  }
}
