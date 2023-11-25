import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bot.dart';

class PremiumUser extends StatelessWidget {
  const PremiumUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                color: Color(0xff838383),
                                borderRadius: BorderRadius.circular(24)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Mojtaba Navade",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.brightness_low,
                            color: Color(0xff3290EC),
                          ),
                          Spacer(),
                          Text(
                            "Change Emoji Status",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3290EC),
                            ),
                          ),
                        ],
                      ),
                      RangeSlider(
                        values: RangeValues(0, 0),
                        onChanged: (value) {},
                      ),
                      Text(
                        "23 days left / monthly plan",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff838383),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "15% discount for your next month",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF964FF),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xffD571F2),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          preferredSize: Size(double.infinity, 260),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Telegram Premium',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0000000),
                      ),
                    ),
                    Text(
                      "Manage",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3290EC),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Last Activities:",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff838383),
                  ),
                ),
                SizedBox(height: 10),
                Integrations(
                  "Telegram",
                  "Google Drive",
                  "Last activity: Sep 02, 2023",
                  Icons.arrow_forward_ios,
                ),
                SizedBox(
                  height: 20,
                ),
                Integrations(
                  "Spotify",
                  "Telegram",
                  "Last activity: Sep 01, 2023",
                  Icons.arrow_forward_ios,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Telegram Premium',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0000000),
                      ),
                    ),
                    Text(
                      "Manage",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3290EC),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Categories(
                    "Developers", "23 Contacts", "Clients", "85 Contacts"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Telegram Premium',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0000000),
                      ),
                    ),
                    Text(
                      "Manage",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3290EC),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Tags("Design idea", "Useful site", 'Mockups')
              ],
            ),
          ),
        ),
        bottomNavigationBar: botom(),
      ),
    );
  }
}

Integrations(String title, String description, String text, IconData icon) {
  return Container(
    width: double.infinity,
    height: 78,
    color: Color(0xffEDEDED),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xff3290EC),
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xffF964FF),
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "$title",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3290EC),
                      ),
                    ),
                    Text(
                      "$description",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE14D4D),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "$text",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff838383),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            icon,
            color: Color(0xff3290EC),
          ),
        ],
      ),
    ),
  );
}

Categories(String title, String description, String text, String name) {
  return Row(
    children: [
      Container(
        width: 180,
        height: 64,
        color: Color(0xffEDEDED),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff49454F),
                ),
              ),
              Text(
                "$description",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff95999A),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 10),
      Container(
        width: 180,
        height: 64,
        color: Color(0xffEDEDED),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$text",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff49454F),
                ),
              ),
              Text(
                "$name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff95999A),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Tags(String title, String description, String text) {
  return Row(children: [
    Container(
      width: 120,
      height: 40,
      color: Color(0xffEDEDED),
      child: Center(
        child: Text(
          "$title",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff49454F),
          ),
        ),
      ),
    ),
    SizedBox(width: 5),
    Container(
      width: 120,
      height: 40,
      color: Color(0xffEDEDED),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff49454F),
          ),
        ),
      ),
    ),
    SizedBox(width: 5),
    Container(
      width: 120,
      height: 40,
      color: Color(0xffEDEDED),
      child: Center(
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff49454F),
          ),
        ),
      ),
    ),
  ]);
}
