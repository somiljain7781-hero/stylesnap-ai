import 'package:flutter/material.dart';
import 'widgets/header_section.dart';
import 'widgets/google_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderSection(),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),

                    const Text(
                      "Welcome to StyleSnap AI!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                       width: double.infinity,
                       height: 55,
                       child: ElevatedButton.icon(
                         onPressed: () {},
                         icon: const Icon(
                           Icons.email_outlined,
                           color: Colors.white,
                         ),
                         label: const Text(
                           "Continue with Email",
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                         style: ElevatedButton.styleFrom(
                           backgroundColor: const Color(0xFF1E5BFF),
                           elevation: 5,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                         ),
                       ),
                     ),

                     const SizedBox(height: 20),

                     const GoogleButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}