import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String title;
  // VoidCallback onTap;
  AppButton({
    this.title = 'Button',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Color.fromARGB(97, 217, 223, 217),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Text(
            "$title",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xff838383),
            ),
          ),
        ],
      ),
    );
  }
}

class AppButton1 extends StatelessWidget {
  String title;

  AppButton1({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$title",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff838383),
          ),
        ),
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  String title;
  String description;
  MyWidget({this.title = "", this.description = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "$description",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8E90),
                  ),
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
