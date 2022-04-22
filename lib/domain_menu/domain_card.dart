import 'package:evi_app/domain_menu/domain_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/application_form.dart';

class DomainCard extends StatelessWidget {
  const DomainCard({Key? key, required this.domainList}) : super(key: key);

  final DomainList domainList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(10, 10),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ]),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(domainList.url),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      domainList.title,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ApplicationForm(
                                    domainList: domainList,
                                  )));
                    },
                    icon: const Icon(
                      Icons.check_outlined,
                    ),
                    label: const Text(
                      'APPLY',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
