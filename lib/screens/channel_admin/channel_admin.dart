import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bottom.dart';
import 'package:flutter_application_1/model/chatmodel.dart';
import 'package:flutter_application_1/model/chates.dart';

class ChannelAdminSide extends StatefulWidget {
  const ChannelAdminSide({super.key});

  @override
  State<ChannelAdminSide> createState() => _ChannelAdminSideState();
}

class _ChannelAdminSideState extends State<ChannelAdminSide> {
  List<MessageModel> messages = [
    MessageModel(
      name: "Design Stuff",
      text: "Here is the link of MacOS design system on Figma community:",
      link:
          "https://www.figma.com/community/file/1143831050419793062/apple-macos-12-design-system-for-figma",
      isMe: false,
    ),
    MessageModel(
      name: "Ali",
      text: "1000 Cool Design Patterns",
      file: FileModel(title: "Design Patterns.zip", size: 64, info: ''),
      isMe: true,
    ),
    MessageModel(
      name: "Design Stuff",
      text: "Here is the link of MacOS design system on Figma community:",
      link:
          "https://www.figma.com/community/file/1143831050419793062/apple-macos-12-design-system-for-figma",
      isMe:true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            height: 114,
            color: Color(0xffEDEDED),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    color: Color(0xff838383),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color(0xff3290EC),
                      borderRadius: BorderRadius.circular(54),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Design Stuff",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "1.8K Subscribers",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8D8E90),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Color(0xff838383),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(double.infinity, 114),
        ),
        bottomNavigationBar: bottom(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(124, 168, 219, 0.61),
                Color.fromRGBO(128, 236, 165, 0.76),
              ],
            ),
          ),
          child: ListView.separated(
            padding: const EdgeInsets.all(10.0),
            itemCount: messages.length,
            shrinkWrap: true,
            reverse: true,
            itemBuilder: (context, index) {
              return MessageWidget(message: messages[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
          ),
        ),
      ),
    );
  }
}
