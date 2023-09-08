import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ewallet_app/component/login_Sign_In.dart';
import 'package:ewallet_app/component/login_button.dart';
import 'package:ewallet_app/component/login_icon.dart';
import 'package:ewallet_app/component/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key, required this.onTap});
  final Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passordController = TextEditingController();
  final confirmController = TextEditingController();
  final nameController = TextEditingController();
  final balanceController = TextEditingController();

  Future userSignIn() async {
    if (passordController.text == confirmController.text) {
         await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usernameController.text, password: passordController.text);

      addUserData(
        nameController.text.trim(),
        usernameController.text.trim()
      );

    }
  }

  Future addUserData(String name,String email) async{
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'balance' : 10001,
      'email': email
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LoginIcon(),
             MyTextField(
                controller: nameController,
                hintText: "Name",
                obsecureText: true),
            MyTextField(
                controller: usernameController,
                hintText: "Username",
                obsecureText: false),
            // _passwordAuth(),
            MyTextField(
                controller: passordController,
                hintText: "Password",
                obsecureText: true),
             MyTextField(
                controller: confirmController,
                hintText: "Confirm",
                obsecureText: true),
            // _forgotPassword(),
            LoginButton(onTap: userSignIn,text: "Sign Up",),
            GestureDetector(
              onTap: widget.onTap,
              child: const SignIn(firstText: "Dont have account? ",coloredText:"Create Account" )
            ),
            
          ],
        ),
      ),

      )
      
    ));
  }

  Widget _forgotPassword() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text("Forgot Password")],
      ),
    );
  }

  // Widget _emailAuth() {
  Widget _loginTitle() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login With",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          // Text("Please sign in to continue"),
        ],
      ),
    );
  }

  Widget _textDivider() {
    return Container(
      child: const Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 1.2,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Or",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _passwordAuth() {
    return Container(
      // padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password :",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Password"),
          ),
        ],
      ),
    );
  }
}
