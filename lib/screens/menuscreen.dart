import 'package:evi_app/domain_menu/domain_card.dart';
import 'package:evi_app/domain_menu/domain_list.dart';
import 'package:evi_app/screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text('EVI'),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[900],
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  logoutView(context);
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                child: Text(
                  "Select any domain to apply",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              SizedBox(
                height: size.height - 0.5,
                child: ListView.builder(
                    shrinkWrap: true,
                    controller: listScrollController,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    itemCount: domainList.length,
                    itemBuilder: (context, index) =>
                        DomainCard(domainList: domainList[index])),
              ),
            ],
          ),
        ));
  }

  void logoutView(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("LOG OUT"),
            content: const Text("Are you sure you want to logout?"),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text(
                  'LOGOUT',
                  //style: TextStyle(fontSize: 18.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              ),
            ],
          );
        });
  }
}
