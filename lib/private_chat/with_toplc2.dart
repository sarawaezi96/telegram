import 'package:flutter/material.dart';

class WithTopics2 extends StatelessWidget {
  const WithTopics2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            height: 114,
            color: Color(0xffEDEDED),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    color: Color(0xff838383),
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "English Learning",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "121 Members",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8D8E90),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Color(0xff838383),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(double.infinity, 114),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              withtopics(
                "🌆",
                "General",
                "Andres: New lessons upcoming",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "🎮",
                "Dialogues",
                "Lisa: Hello Everyone 👋",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "💬",
                "Reading",
                "Hi",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "📖",
                "Writing Task 2",
                "Topic Created",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "📝",
                "Writing Task 1",
                "Topic Created",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "📝",
                "General",
                "Andres: New lessons upcoming",
              ),
              SizedBox(height: 5),
              Divider(),
              withtopics(
                "📔",
                "E_Learning",
                "Topic Created ",
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.auto_awesome_sharp),
        ),
      ),
    );
  }
}

withtopics(String text, String title, String describtion) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$text"),
      SizedBox(width: 5),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
          ),
          Text(
            "$describtion",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff3290EC),
            ),
          ),
        ],
      ),
    ],
  );
}
