import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/edit_porofil.dart';
import 'package:flutter_application_1/screens/contacts.dart';
import 'package:flutter_application_1/widget/bot.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              width: double.infinity,
              height: 224,
              color: Color(0xffEDEDED),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Account",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => EditPorofile(),
                              ),
                            );
                          },
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: Color(0xff3290EC),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(70),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mojtaba Navade",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "+98 911 682 8684",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff838383),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@mojtabatn",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff838383),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.qr_code_rounded,
                          color: Color(0xff3290EC),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.expand_more_rounded,
                          color: Color(0xff3290EC),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Other Accounts",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3290EC),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: Size(double.infinity, 260),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  acont(
                    title: "My Stories",
                    icon: Icons.account_circle_rounded,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Wallet",
                    icon: Icons.account_balance_wallet_rounded,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  acont(
                    title: "Recent Calls",
                    icon: Icons.call,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Devices",
                    icon: Icons.devices,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Chat Folders",
                    icon: Icons.drive_file_move_sharp,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  acont(
                      title: "Notifications and Sounds",
                      icon: Icons.notifications),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Privacy and Security",
                    icon: Icons.private_connectivity_outlined,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Data and Storage",
                    icon: Icons.data_saver_off_sharp,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Appearance",
                    icon: Icons.app_settings_alt,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Privacy and Security",
                    icon: Icons.private_connectivity_outlined,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  acont(
                    title: "Data and Storage",
                    icon: Icons.data_saver_off_sharp,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: botom(),
        ),
      ),
    );
  }
}

acont({required String title, required IconData icon}) {
  return Row(
    children: [
      Icon(
        icon,
        color: Color(0xff838383),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "$title",
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
