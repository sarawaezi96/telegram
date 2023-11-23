import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bot.dart';

class FreeUser extends StatelessWidget {
  const FreeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 475,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Telegram Premium',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0000000),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 300,
                        height: 200,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Go beyond the limits, get exclusiv features qand supprt us by subscribing to Telegram Premium.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff49454F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 100,
                        color: Color(0xffFFFFFF),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.album_outlined,
                                  color: Color(0xff3BA9EC),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Annual",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "3.90/month",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff838383),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xff3BA9EC),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Annual",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "3.90/month",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff838383),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13),
                      Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff3290EC),
                              Color(0xff925DE6),
                              Color(0xffD571F2),
                              Color(0xffF964FF),
                              Color(0xffFF9264),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Subscribe for 35.99 / year",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          preferredSize: Size(double.infinity, 475),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ui(
                Icons.add_reaction_sharp,
                "Upgraded Stories",
                Icons.arrow_forward_ios,
                "priority order, stealth mode, permanent view histori and more.",
              ),
              ui(
                Icons.brightness_auto,
                "Doubled Limits",
                Icons.arrow_forward_ios,
                "Up to 1000 channels, 20 folders, 10 pins,20 public links and more. ",
              ),
              ui(
                Icons.note_add_rounded,
                "4 GB Upload Size",
                Icons.arrow_forward_ios,
                "Up to 1000 channels, 20 folders, 10 pins,20 public links and more. ",
              ),
            ],
          ),
        ),
        bottomNavigationBar: botom(),
      ),
    );
  }
}

ui(
  IconData icon,
  String title,
  IconData icons,
  String description,
) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Color(0xffBF3FF0),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "$title",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Icon(
              icons,
              color: Color(0xff868686),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "$description",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff868686),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
