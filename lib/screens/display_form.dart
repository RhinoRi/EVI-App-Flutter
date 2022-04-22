import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayForm extends StatelessWidget {
  DisplayForm({
    Key? key,
    required this.domainList,
    required this.name,
    required this.branch,
    required this.email,
    required this.college,
    required this.phone,
    required this.percent10,
    required this.percent12,
    required this.location,
    required this.myUG,
    required this.myPG,
    required this.myMonth,
  }) : super(key: key);
  String name,
      branch,
      email,
      college,
      phone,
      percent10,
      percent12,
      location,
      myUG,
      myPG,
      myMonth;

  final String domainList;

  TextStyle myTextStyle = const TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.white70,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  name,
                  style: myTextStyle,
                ),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(branch, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(email, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(college, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(phone, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(myUG, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(myPG, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(domainList, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(myMonth, style: myTextStyle),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
