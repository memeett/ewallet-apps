import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final String firstText;
  final String coloredText;
  const SignIn({super.key, required this.firstText, required this.coloredText});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(firstText),
          Text(coloredText, style: TextStyle(color: Colors.blue))
        ],
      ),
    
    );
  }
}
