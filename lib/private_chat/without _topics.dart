import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/channel_admin/channel_admin2.dart';
import 'package:flutter_application_1/widget/bottom.dart';
import 'package:flutter_application_1/model/chatmodel.dart';
import 'package:flutter_application_1/model/chates.dart';

class WithoutTopice extends StatefulWidget {
  const WithoutTopice({super.key});

  @override
  State<WithoutTopice> createState() => _WithoutTopiceState();
}

class _WithoutTopiceState extends State<WithoutTopice> {
  List<MessageModel> messages = [
    MessageModel(
      name: "Ali",
      text: "1000 Cool Design Patterns",
      file: FileModel(title: "Design Patterns.zip", size: 64, info: ''),
      isMe: false,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TG Developers",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "55 Members, 12 online",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff838383),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(124, 168, 219, 0.61),
                Color.fromRGBO(128, 236, 165, 0.76),
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
              ),
              ListView.separated(
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
            ],
          ),
        ),
      ),
    );
  }
}
