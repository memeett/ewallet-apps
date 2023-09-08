import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
   final String imagePath;
  const LoginOption({super.key, required this.imagePath});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color:Colors.grey),
          color: Colors.white
        ),
        child: Image.asset(imagePath,height: 60,),
      ),
    );
  }
}