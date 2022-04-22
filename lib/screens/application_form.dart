import 'package:evi_app/domain_menu/domain_list.dart';
import 'package:evi_app/screens/display_form.dart';

import 'package:flutter/material.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({Key? key, required this.domainList}) : super(key: key);
  final DomainList domainList;

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController branchName = TextEditingController();
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userCollege = TextEditingController();
  final TextEditingController userPhone = TextEditingController();
  final TextEditingController user10 = TextEditingController();
  final TextEditingController user12 = TextEditingController();
  final TextEditingController location = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  List ugNames = ["BE/B.Tech", "B.Sc Computers", "BCA", "BBA", "others"];
  List pgNames = [
    "ME/M.Tech/MCA",
    "MBA IT",
    "MBA",
    "MS",
    "MS(Computers)",
    "None"
  ];
  // List categories = ['Software Development',
  //   'Full Stack Developer',
  //   'Mean Stack Developer',
  //   'Web Development',
  //   'Data Science',
  //   'IOT',
  //   'App Developer',
  //   'Cyber Security',
  //   'HR',
  //   'Process Associate',
  //   'Content Writer',
  //   'Digital Marketing',
  //   'UI/UX Design',
  //   'Business Development',
  //   'Marketing',
  //   'Tele Caller',
  //   'Email Marketing',
  //   'SMS Marketing',
  //   'Photographer/Videographer',
  //   'Film Maker',
  //   'Digital Content Creator',
  //   'Social Media Promotor'
  // ];
  List months = ["1W", "1", "2", "3", "4", "5", "6"];

  String myUG = '';
  String myPG = '';
  //String myCategory = '';
  String myMonth = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Form'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 13.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    buildNameInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildBranchInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildEmailInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildCollegeInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildPhoneInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    build10Input(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    build12Input(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildLocationInput(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildUGField(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildPGField(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      widget.domainList.title + "*",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 25.0),
                    ),
                    const SizedBox(
                      height: 23.0,
                    ),
                    buildInternMonthField(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: buildElevatedButton(context))
                  ],
                ),
              )),
        ),
      ),
    );
  }

  TextFormField buildNameInput() {
    return TextFormField(
        controller: userName,
        keyboardType: TextInputType.text,
        cursorColor: Colors.grey[800],
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(
          label: Text(
            'Full Name',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          } else if (value.length < 3) {
            return 'Value is shorter than expected.';
          }
          return null;
        });
  }

  TextFormField buildBranchInput() {
    return TextFormField(
        controller: branchName,
        keyboardType: TextInputType.text,
        cursorColor: Colors.grey[800],
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(
          label: Text(
            'Branch',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          }
          return null;
        });
  }

  TextFormField buildEmailInput() {
    return TextFormField(
        controller: userEmail,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.grey[800],
        decoration: const InputDecoration(
          label: Text(
            'Email',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          }
          return null;
        });
  }

  TextFormField buildCollegeInput() {
    return TextFormField(
        controller: userCollege,
        keyboardType: TextInputType.text,
        cursorColor: Colors.grey[800],
        decoration: const InputDecoration(
          label: Text(
            'College',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          } else if (value.length < 3) {
            return 'Value is shorter than expected.';
          }
          return null;
        });
  }

  TextFormField buildPhoneInput() {
    return TextFormField(
        controller: userPhone,
        keyboardType: TextInputType.phone,
        cursorColor: Colors.grey[800],
        decoration: const InputDecoration(
          label: Text(
            'Phone',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          } else if (value.length < 10 || value.length > 10) {
            return 'Value Length is incorrect.';
          }
          return null;
        });
  }

  TextFormField build10Input() {
    return TextFormField(
        controller: user10,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        cursorColor: Colors.grey[800],
        decoration: const InputDecoration(
          label: Text(
            '10th percentage',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          }
          return null;
        });
  }

  TextFormField build12Input() {
    return TextFormField(
        controller: user12,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        cursorColor: Colors.grey[800],
        decoration: const InputDecoration(
          label: Text(
            '12th percentage',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          }
          return null;
        });
  }

  TextFormField buildLocationInput() {
    return TextFormField(
        controller: location,
        keyboardType: TextInputType.text,
        cursorColor: Colors.grey[800],
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(
          label: Text(
            'Location',
          ),
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter correct details.';
          } else if (value.length < 2) {
            return 'Value is shorter than expected.';
          }
          return null;
        });
  }

  DropdownButtonFormField buildUGField() {
    return DropdownButtonFormField(
        hint: Text('Select any one'),
        value: ugNames.first,
        decoration: const InputDecoration(
          labelText: 'UG',
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        items: ugNames
            .map<DropdownMenuItem>((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            myUG = value;
          });
        });
  }

  DropdownButtonFormField buildPGField() {
    return DropdownButtonFormField(
        hint: Text('Select any one'),
        value: pgNames.first,
        decoration: const InputDecoration(
          labelText: 'PG',
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        items: pgNames
            .map<DropdownMenuItem>((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            myPG = value;
          });
        });
  }

  DropdownButtonFormField buildInternMonthField() {
    return DropdownButtonFormField(
        hint: Text('Select any one'),
        value: months.first,
        decoration: const InputDecoration(
          labelText: 'Internship for',
          labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        items: months
            .map<DropdownMenuItem>((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            myMonth = value;
          });
        });
  }

  ElevatedButton buildElevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formkey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.white,
              content: Row(
                children: const [
                  Text(
                    'Processing...',
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircularProgressIndicator(
                    color: Colors.green,
                  )
                ],
              )));
          Future.delayed(Duration(seconds: 4), () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DisplayForm(
                  domainList: widget.domainList.title,
                  name: userName.text,
                  branch: branchName.text,
                  email: userEmail.text,
                  college: userCollege.text,
                  phone: userPhone.text,
                  percent10: user10.text,
                  percent12: user12.text,
                  location: location.text,
                  myUG: myUG,
                  myPG: myPG,
                  myMonth: myMonth,
                ),
              ),
            );
          });
        }
      },
      child: const Text('SUBMIT'),
      style: ElevatedButton.styleFrom(primary: Colors.pink),
    );
  }
}
