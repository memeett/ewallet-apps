import 'package:ewallet_app/component/login_Sign_In.dart';
import 'package:ewallet_app/component/login_button.dart';
import 'package:ewallet_app/component/login_icon.dart';
import 'package:ewallet_app/component/login_option.dart';
import 'package:ewallet_app/component/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onTap});
  final Function()? onTap;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passordController = TextEditingController();

  void userSignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text, password: passordController.text);
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LoginIcon(),
            _loginTitle(),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                LoginOption(imagePath: "lib/assets/google-logo-9808.png"),
                LoginOption(imagePath: "lib/assets/pngwing.com (9).png"),
              ],
            ),

            _textDivider(),
            MyTextField(
                controller: usernameController,
                hintText: "Username",
                obsecureText: false),
            // _passwordAuth(),
            MyTextField(
                controller: passordController,
                hintText: "Password",
                obsecureText: true),
            _forgotPassword(),
            LoginButton(onTap: userSignIn,text: "Login"),
            GestureDetector(
              onTap: widget.onTap,
              child: const SignIn(firstText: "Already have account? ",coloredText:"Login Account" )
            )
           
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
