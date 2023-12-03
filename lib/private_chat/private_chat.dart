import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/user/premium_user.dart';
import 'package:flutter_application_1/widget/bottom.dart';
import 'package:flutter_application_1/widget/chat.dart';
import 'package:flutter_application_1/widget/chates.dart';
import 'package:flutter_application_1/widget/widget.dart';

class PrivateChat extends StatefulWidget {
  const PrivateChat({super.key});

  @override
  State<PrivateChat> createState() => _PrivateChatState();
}

class _PrivateChatState extends State<PrivateChat> {
  List<ChatModel> chats = [
    ChatModel(
      "Okay",
      "10:24 AM",
      Icons.check_outlined,
      true,
    ),
    ChatModel(
      "tomorrow, everything tomorrow",
      "6:07 AM",
      Icons.check_outlined,
      false,
    ),
    ChatModel(
      "Where is my flamethrower?",
      "1:50 PM",
      Icons.check_outlined,
      true,
    ),
    ChatModel(
      "I always keep my promises",
      "12:34 AM",
      Icons.check_outlined,
      false,
    ),
    ChatModel(
      "And you lie very often.",
      "12:06 AM",
      Icons.check_outlined,
      true,
    ),
    ChatModel(
      "Well, yes, of courseyou very rarely .",
      "12:06 AM",
      Icons.check_outlined,
      true,
    ),
    ChatModel(
      "Just ask - I will do everything for you.",
      "10:03 AM",
      Icons.check_outlined,
      false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 114,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Color(0xff838383),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Color(0xff838383),
                          borderRadius: BorderRadius.circular(48),
                        ),
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Eliza",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                "last seen recently",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff838383),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.call,
                        color: Color(0xff838383),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.more_vert,
                        color: Color(0xff838383),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          preferredSize: Size(double.infinity, 114),
        ),
        bottomNavigationBar: bottom(),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
            ),
            ListView.builder(
              padding: EdgeInsets.all(25),
              itemCount: chats.length,
              shrinkWrap: true,
              reverse: true,
              itemBuilder: (context, index) {
                return ChatWidget(chat: chats[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
