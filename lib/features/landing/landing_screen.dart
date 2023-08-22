import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: size.height / 12),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
            ),
            SizedBox(height: size.height / 12),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Read our Privacy Policy. Tap "agree and continue" to accept the terms of Services',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.75,
              child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
