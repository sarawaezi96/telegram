import 'package:flutter/material.dart';

class botom extends StatelessWidget {
  const botom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.chat,
                    color: Color(0xff3290EC),
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3290EC),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.contacts,
                    color: Color(0xff49454F),
                  ),
                  Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff49454F),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xff49454F),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff49454F),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.workspace_premium,
                    color: Color(0xff49454F),
                  ),
                  Text(
                    "Premium",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff49454F),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        height: 70,
        color: Colors.grey[200],
      ),
    );
  }
}
