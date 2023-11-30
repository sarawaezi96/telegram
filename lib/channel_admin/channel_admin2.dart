import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class ChannelAddmin2 extends StatefulWidget {
  const ChannelAddmin2({super.key});

  @override
  State<ChannelAddmin2> createState() => _ChannelAddmin2State();
}

class _ChannelAddmin2State extends State<ChannelAddmin2>
    with SingleTickerProviderStateMixin {
  List<Tab> tabs = [
    Tab(text: "Members"),
    Tab(text: "Media"),
    Tab(text: "Files"),
    Tab(text: "Voice"),
    Tab(text: "Links"),
  ];

  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            width: double.infinity,
            height: 506,
            padding: const EdgeInsets.all(20.0),
            color: Color(0xffEDEDED),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff838383),
                    ),
                    Spacer(),
                    Icon(
                      Icons.border_color,
                      color: Color(0xff838383),
                    ),
                    SizedBox(height: 5),
                    Icon(
                      Icons.more_vert,
                      color: Color(0xff838383),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Design Stuff",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "public channels",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8E90),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3290EC),
                  ),
                ),
                Text(
                  "Im a product designer who is interested in sharing nice design stuff.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8E90),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Invite Link",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8D8E90),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.qr_code_rounded,
                      color: Color(0xff3290EC),
                    ),
                  ],
                ),
                Text(
                  "t.me/Design_Stuffs",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                Divider(),
                Notifications(),
                Divider(),
                subscribers(Icons.account_box_outlined, "Subscribers", "1804"),
                SizedBox(height: 10),
                subscribers(Icons.assistant_outlined, "Administrators", "2"),
                TabBar(
                  unselectedLabelColor: Color(0xff334D8F),
                  labelColor: Color(0xff3290EC),
                  controller: controller,
                  tabs: tabs,
                ),
              ],
            ),
          ),
          preferredSize: Size(double.infinity, 540),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            posts(),
            media(),
            files(),
            voice(),
            gies(),
          ],
        ),
      ),
    );
  }
}

subscribers(IconData icon, String title, String describtion) {
  return Row(
    children: [
      Icon(
        icon,
        color: Color(0xff3290EC),
      ),
      SizedBox(width: 10),
      Text(
        "$title",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      Spacer(),
      Text(
        "$describtion",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff3290EC),
        ),
      ),
    ],
  );
}

posts() {
  return GridView.count(
    crossAxisCount: 3,
    crossAxisSpacing: 10,
    children: List.generate(
      6,
      (int position) {
        return generateTtems();
      },
    ),
  );
}

generateTtems() {
  return Image.network("");
}

media() {
  return Text("");
}

files() {
  return Text("");
}

voice() {
  return Text("");
}

gies() {
  return Text("");
}
