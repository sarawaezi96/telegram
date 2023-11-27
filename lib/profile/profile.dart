import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  List<Tab> tabs = [
    Tab(
      text: "Posts",
    ),
    Tab(
      text: "Media",
    ),
    Tab(
      text: "Files",
    ),
    Tab(
      text: "Voice",
    ),
    Tab(
      text: "Links",
    ),
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
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xff838383),
                      ),
                      Spacer(),
                      Icon(
                        Icons.call,
                        color: Color(0xff838383),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.more_vert,
                        color: Color(0xff838383),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff838383),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Eliza",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "last seen recently",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff838383),
                    ),
                  ),
                  profileWidget(),
                  Spacer(),
                  TabBar(
                    // indicator: BoxDecoration(
                    //   color: Color(0xff3290EC),
                    // ),
                    dividerColor: Color(0xff334D8F),
                    unselectedLabelColor: Color(0xff334D8F),
                    controller: controller,
                    tabs: tabs,
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(double.infinity, 470),
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
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        6,
        (int position) {
          return generateTtems();
        },
      ),
    );
  }

  media() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        6,
        (int position) {
          return generateTtems();
        },
      ),
    );
  }

  files() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        6,
        (int position) {
          return generateTtems();
        },
      ),
    );
  }

  voice() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        6,
        (int position) {
          return generateTtems();
        },
      ),
    );
  }

  gies() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        6,
        (int position) {
          return generateTtems();
        },
      ),
    );
  }
}

generateTtems() {
  return Image.network("");
}
