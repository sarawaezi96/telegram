import 'package:flutter/material.dart';
import 'package:flutter_application_1/Edit_porofil.dart';
import 'package:flutter_application_1/contacts.dart';

import 'package:flutter_application_1/header.dart';
import 'package:flutter_application_1/new_contacct.dart';
import 'package:flutter_application_1/setting.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:EditPorofile(),
    );
  }
}
// Header
// Contacts
// newcontacts
// Setting
// EditPorofile



