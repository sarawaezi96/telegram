import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/chatmodel.dart';

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

class FileWidget extends StatelessWidget {
  final FileModel file;
  FileWidget({required this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: file.isMe == true ? Colors.white70 : Colors.green[100],
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            child: Icon(
              Icons.arrow_downward_outlined,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Color(0xff62AC55),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  file.title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff62AC55),
                  ),
                ),
                Text(
                  "${file.size} MB ZIP",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffA1AAB3),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Color(0xff838383),
          ),
        ],
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final MessageModel message;
  MessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection:
          message.isMe == true ? TextDirection.rtl : TextDirection.ltr,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            color: Color(0xffFFFFFF),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.name ?? "",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3290EC),
                    ),
                  ),
                  SizedBox(height: 10),
                  if (message.file != null) ...[
                    FileWidget(file: message.file!),
                    SizedBox(height: 10),
                  ],
                  Text(
                    message.text ?? '',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 10),
                  if (message.link != null) ...[
                    Text(
                      message.link ?? '',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3290EC),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "َApple MacOs ...",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 278,
                      height: 150,
                      color: Color(0xff838383),
                      child: Image.network('${message.link}'),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Figma ...",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class WithoutTopiceWidget extends StatelessWidget {
//   final WithoutTopiceWidgetwww avatar;
//   WithoutTopiceWidget({required this.avatar});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           color: Color(0xffEDEDED),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 avatar.title ?? "",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xffC9564F),
//                 ),
//               ),
//               Container(
//                 width: 233,
//                 height: 184,
//                 color: Colors.grey,
//               ),
//               Text(
//                 avatar.text ?? "",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xff393939),
//                 ),
//               ),
//               Text(
//                 avatar.num ?? "",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xff359FE4),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

