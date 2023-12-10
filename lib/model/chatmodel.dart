import 'package:flutter/material.dart';

class ChatModel {
  final String text;
  final String describtion;
  final IconData icon;
  final bool isMe;
  ChatModel(
    this.text,
    this.describtion,
    this.icon,
    this.isMe,
  );
}

class FileModel {
  final String title;
  final String info;
  final int size;
  final IconData? icon;

  FileModel({
    required this.title,
    required this.info,
    required this.size,
    this.icon,
  });

  get isMe => null;
}

class MessageModel {
  final String? name;
  final String? text;
  final String? link;
  final FileModel? file;
  final bool? isMe;

  MessageModel({
    this.name,
    this.text,
    this.link,
    this.file,
    this.isMe,
  });
}

// class WithoutTopiceWidgetwww {
//   final String? title;
//   final String? text;
//   final String? num;

//   WithoutTopiceWidgetwww({
//     this.title,
//     this.text,
//     this.num,
//   });
// }

// class WithoutModel {
//   final WithoutTopiceWidgetwww? file;
//   WithoutModel({this.file});
// }
