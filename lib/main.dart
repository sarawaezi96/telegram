import 'package:flutter/material.dart';
import 'package:flutter_application_1/channel_admin/channel_admin.dart';
import 'package:flutter_application_1/channel_admin/channel_admin2.dart';
import 'package:flutter_application_1/private_chat/not_accepted.dart';
import 'package:flutter_application_1/private_chat/private_chat.dart';
import 'package:flutter_application_1/private_chat/with_toplc2.dart';
import 'package:flutter_application_1/private_chat/without%20_topics.dart';
import 'package:flutter_application_1/private_chat/without.dart';
import 'package:flutter_application_1/profile/edit_porofil.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/screens/contacts.dart';
import 'package:flutter_application_1/screens/chates.dart';
import 'package:flutter_application_1/screens/new_contacct.dart';
import 'package:flutter_application_1/setting/setting.dart';
import 'package:flutter_application_1/storipage/stori_page.dart';
import 'package:flutter_application_1/user/free_user.dart';
import 'package:flutter_application_1/user/premium_user.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

home: Chats (),
// home: Contacts (),
// home: NewContacts (),
// home: Setting (),
// home: EditPorofile (),
// home: FreeUser(),
// home:  PremiumUser(),
// home: PrivateChat(),
// home: Profile(),
// home: WithoutTopice(),
// home: Without(),
//home: WithTopics2(),
// home: ChannelAdminSide(),
// home: ChannelAddmin2(),
      // home: StoriPage(),
      // home: StoriPage(),
    );
  }
}
