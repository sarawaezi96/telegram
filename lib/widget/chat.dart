import 'package:flutter/material.dart';

class ChatModel {
  final String text;
  final String describtion;
  final IconData icon;
  final bool isMe;
  ChatModel(this.text, this.describtion, this.icon, this.isMe);
}
