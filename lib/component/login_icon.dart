import 'package:flutter/material.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        'lib/assets/logo-no-background.png',
        height: 180,
      ),
    );
  }
}
