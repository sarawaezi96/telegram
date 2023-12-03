import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String title;

  AppButton({
    this.title = 'Button',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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

class Chates extends StatelessWidget {
  String title;
  IconData icon;
  Chates({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xff3290EC),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff3290EC),
          ),
        ),
        Divider(),
      ],
    );
  }
}

class profileWidget extends StatelessWidget {
  const profileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Bio",
            helperStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff838383),
            ),
          ),
        ),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            labelText: "Username",
            helperStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff838383),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Notifications",
            helperStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(838383),
            ),
          ),
        ),
      ],
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notifications",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Switch(
          value: false,
          onChanged: (value) {},
        ),
      ],
    );
  }
}

// class mychat extends StatelessWidget {
//   String title;
//   String decoration;
//   IconData icon;

//   mychat({this.title = "", this.decoration = "", required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 111, 172, 101),
//       child: Column(
//         children: [
//           Text(
//             "$title",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w400,
//               color: Color(0xff000000),
//             ),
//           ),
//           Row(
//             children: [
//               Text(
//                 "$decoration",
//                 style: TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400,
//                   color: Color(0xff62AC55),
//                 ),
//               ),
//               Icon(
//                 icon,
//                 color: Color(0xff62AC55),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
