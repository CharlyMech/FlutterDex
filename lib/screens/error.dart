import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  const ErrorScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 20,
            child: SizedBox(
              width: screenWidth,
              height: screenWidth / 2,
              child: const RiveAnimation.asset(
                'assets/rive/sleeping_snorlax.riv',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/message_box.png',
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      message,
                      style: GoogleFonts.getFont('Open Sans'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
