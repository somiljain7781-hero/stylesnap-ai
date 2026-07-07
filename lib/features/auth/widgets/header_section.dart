import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/header_bg.png',
            fit: BoxFit.cover,
          ),

          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}