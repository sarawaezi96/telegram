import 'package:flutter/material.dart';
import 'package:flutter_application_1/bot.dart';
import 'package:flutter_application_1/widget.dart';

class Header extends StatelessWidget {
  const Header({super.key});

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
                        Icon(
                          Icons.search,
                          color: Color(0xff838383),
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
                MyWidget(
                  title: "Victoria",
                  description: "Yes, they are necessary",
                ),
                MyWidget(
                  title: "Telegram Support",
                  description: "New Login Detected",
                ),
                MyWidget(
                  title: "Eliza",
                  description: "Okay",
                ),
                MyWidget(
                  title: "Telegram Contests",
                  description: "Clarifications for participants of..",
                ),
                MyWidget(
                  title: "Albert Flores",
                  description: "Bye",
                ),
                MyWidget(
                  title: "Kristin",
                  description: "Thanks ❤️",
                ),
                MyWidget(
                  title: "Kristin",
                  description: "Thanks ❤️",
                ),
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
            child: Icon(Icons.add),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
