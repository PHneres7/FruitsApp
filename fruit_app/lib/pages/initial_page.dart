import 'package:flutter/material.dart';
import 'package:fruit_app/app/app_routes.dart';
import 'package:fruit_app/app/app_theme.dart';

import '../widgets/custom_button.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Image.asset(
                'images/vegetablesFruit.png',
                height: 200,
                width: 200,
              ),
            ),
            Text(
              'KEEPING YOU HEALTHY',
              style: TextStyle(
                color: AppTheme.tertiaryColor,
                letterSpacing: 7,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Let's start eating\nHealthy",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: 4,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "In honor of World Healthy Day\nwe'd like to give you this\namazing after.",
              style: TextStyle(
                fontSize: 26,
                color: Colors.grey.shade700,
                height: 0.9,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Already have on Account? Sign-in',
              style: TextStyle(
                color: AppTheme.tertiaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              label: 'Get Started',
              icon: Icons.arrow_right_alt,
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.mainPage);
              },
            )
          ],
        ),
      ),
    );
  }
}
