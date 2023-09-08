import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.obsecureText,
      this.controller});
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      // padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: obsecureText,
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                ),
          )
        ],
      ),
    );
  }
}
