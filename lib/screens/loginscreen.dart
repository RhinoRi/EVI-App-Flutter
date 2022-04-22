import 'package:evi_app/constants/myconstants.dart';
import 'package:evi_app/resuable_widgets/emailField.dart';
import 'package:evi_app/resuable_widgets/passwordField.dart';
import 'package:evi_app/screens/menuscreen.dart';
import 'package:evi_app/screens/registerscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: 'join',
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.7],
                colors: [Color(0xFF454545), Color(0xFF1B1B1B)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 50.0),
                  child: Text(
                    "Welcome Back.",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 30.0, right: 30.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 35.0,
                            ),
                            EmailField(
                              controller: _emailController,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            PasswordField(
                              controller: _passwordController,
                            ),
                            const SizedBox(
                              height: 65.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: ElevatedButton(
                                onPressed: () async {
                                  _auth
                                      .signInWithEmailAndPassword(
                                          email: _emailController.text,
                                          password: _passwordController.text)
                                      .then((value) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MenuScreen()));
                                  }).onError((error, stackTrace) {
                                    print("Error ${error.toString()}");
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('LOGIN'),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: buttonColor,
                                    onPrimary: Colors.white,
                                    textStyle: TextStyle(
                                      fontSize: 23.0,
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Don\'t have an account?  ',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: const TextStyle(
                                          color: Color(0xFF446FBB),
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 1.8,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterScreen())),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
