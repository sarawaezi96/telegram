import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Edit_porofil.dart';
import 'package:flutter_application_1/screens/contacts.dart';
import 'package:flutter_application_1/screens/chates.dart';
import 'package:flutter_application_1/screens/new_contacct.dart';
import 'package:flutter_application_1/setting/setting.dart';
import 'package:flutter_application_1/user/free_user.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
// home:Setting(),
// home: Chats (),
// home: Contacts (),
// home: NewContacts (),
// home: Setting (),
//home: EditPorofile (),
home: FreeUser(),
    );
  }
}
