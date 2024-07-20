import 'package:flutter/material.dart';
import 'package:practice1/pages/BMI_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BMI_calculator()));
                },
                child: Text("BMI Calculator"))
          ],
        ),
      ),
    );
  }
}
