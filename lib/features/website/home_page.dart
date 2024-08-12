import 'package:flutter/material.dart';
import 'package:home_cooked/features/auth/screens/sign_in_page.dart';
import 'package:home_cooked/features/collection/screens/collections.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeCooked'),
      ),
      body: const SignInPage(),
    );
  }
}
