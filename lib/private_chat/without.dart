import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class Without extends StatefulWidget {
  const Without({super.key});

  @override
  State<Without> createState() => _WithoutState();
}

class _WithoutState extends State<Without> with SingleTickerProviderStateMixin {
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
            height: 470,
            color: Color(0xffEDEDED),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Color(0xff838383),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.call, color: Color(0xff838383)),
                      SizedBox(width: 10),
                      Icon(Icons.more_vert, color: Color(0xff838383)),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xff838383),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "TG Developers",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "55 Members",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff838383),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  not(),
                  Spacer(),
                  TabBar(
                    dividerColor: Color(0xff334D8F),
                    unselectedLabelColor: Color(0xff334D8F),
                    controller: controller,
                    tabs: tabs,
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(double.infinity, 400),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            postes(),
            media(),
            files(),
            voice(),
            gies(),
          ],
        ),
      ),
    );
  }

  postes() {
    return Column(
      children: [
        MyWidget(
          title: "Kristin Watson",
          description: "last seen recently",
        ),
        MyWidget(
          title: "Kristin Watson",
          description: "last seen recently",
        ),
        MyWidget(
          title: "Kristin Watson",
          description: "last seen recently",
        ),
      ],
    );
  }

  media() {
    return Text("1");
  }

  files() {
    return Text("1");
  }

  voice() {
    return Text("1");
  }

  gies() {
    return Text("1");
  }
}

not() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notifications",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
          ),
          Switch(
            value: false,
            onChanged: (value) {},
          ),
        ],
      ),
      Divider(),
      Row(
        children: [
          Icon(
            Icons.account_circle_rounded,
            color: Color(0xff3290EC),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Notifications",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff3290EC),
            ),
          ),
        ],
      ),
    ],
  );
}
