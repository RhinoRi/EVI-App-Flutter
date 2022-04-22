import 'package:evi_app/constants/myconstants.dart';
import 'package:evi_app/screens/menuscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './loginscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/homebg.jpg"),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.srcOver),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              width: 300.0,
              height: 300.0,
              child: Image.asset(
                "assets/logo.jpg",
                fit: BoxFit.cover,
              )),
          const Text(
            "Welcome to EVI !",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontStyle: FontStyle.italic),
          ),
          Hero(
            transitionOnUserGestures: true,
            tag: 'join',
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonColor,
              ),
              child: IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FirebaseAuth.instance.currentUser == null
                                  ? LoginScreen()
                                  : MenuScreen())),
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 20.0,
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
