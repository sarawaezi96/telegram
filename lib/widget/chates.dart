import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/chat.dart';

class ChatWidget extends StatelessWidget {
  final ChatModel chat;
  const ChatWidget({
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        textDirection: chat.isMe ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Container(
            color: chat.isMe == true ? Colors.green[100] : Colors.white70,
            child: Column(
              children: [
                Text(
                  chat.text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      chat.describtion,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff62AC55),
                      ),
                    ),
                    if (chat.isMe) Icon(Icons.check_outlined)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
