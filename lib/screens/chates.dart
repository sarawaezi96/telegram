import 'package:flutter/material.dart';
import 'package:flutter_application_1/private_chat/private_chat.dart';
import 'package:flutter_application_1/private_chat/without%20_topics.dart';
import 'package:flutter_application_1/private_chat/without.dart';
import 'package:flutter_application_1/screens/contacts.dart';
import 'package:flutter_application_1/widget/bot.dart';
import 'package:flutter_application_1/widget/widget.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              width: double.infinity,
              height: 224,
              color: Color(0xffEDEDED),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chats',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Contacts(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.search,
                            color: Color(0xff838383),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "Telegram",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "Design Stuff",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppButton(
                            title: "My Stories",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AppButton1(title: "All"),
                          SizedBox(
                            width: 20,
                          ),
                          AppButton1(title: "Groups"),
                          SizedBox(
                            width: 10,
                          ),
                          AppButton1(title: "Channels"),
                          SizedBox(
                            width: 20,
                          ),
                          AppButton1(title: "Bots"),
                          SizedBox(
                            width: 20,
                          ),
                          AppButton1(title: "Design"),
                          SizedBox(
                            width: 20,
                          ),
                          AppButton1(title: "Design"),
                          SizedBox(
                            width: 20,
                          ),
                          AppButton1(title: "Design"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: Size(double.infinity, 260),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WithoutTopice(),
                      ),
                    );
                  },
                  child: MyWidget(
                    title: "Victoria",
                    description: "Yes, they are necessary",
                  ),
                ),
                Divider(),
                MyWidget(
                  title: "Telegram Support",
                  description: "New Login Detected",
                ),
                Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PrivateChat(),
                      ),
                    );
                  },
                  child: MyWidget(
                    title: "Eliza",
                    description: "Okay",
                  ),
                ),
                Divider(),
                MyWidget(
                  title: "Telegram Contests",
                  description: "Clarifications for participants of..",
                ),
                Divider(),
                MyWidget(
                  title: "Albert Flores",
                  description: "Bye",
                ),
                Divider(),
                MyWidget(
                  title: "Kristin",
                  description: "Thanks ❤️",
                ),
                Divider(),
                MyWidget(
                  title: "Kristin",
                  description: "Thanks ❤️",
                ),
                Divider(),
                MyWidget(
                  title: "Kristin",
                  description: "Thanks ❤️",
                ),
              ],
            ),
          ),
          bottomNavigationBar: botom(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Without(),
                  ),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
