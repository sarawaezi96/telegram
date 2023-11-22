import 'package:flutter/material.dart';

class EditPorofile extends StatelessWidget {
  const EditPorofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              width: double.infinity,
              height: 224,
              color: Color(0xffEDEDED),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Done",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3290EC),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Color(0xff838383),
                          borderRadius: BorderRadius.circular(80)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Add New Photo",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3290EC),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            preferredSize: Size(double.infinity, 260),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "First name",
                            suffixStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Last name ",
                            suffixStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Bio",
                      hintStyle: TextStyle(
                        color: Color(0xff0000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  tanzimat("Phone number", "+98 911 682 8684", "Change"),
                  SizedBox(
                    height: 15,
                  ),
                  tanzimat("Phone number", "@mojtabatn", "Change"),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    color: Color(0xffEDEDED),
                    child: Center(
                      child: Text(
                        "Log out",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xffE14D4D),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

tanzimat(String title, String description, String text) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 60,
        color: Color(0xffEDEDED),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff838383),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "$text",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3290EC),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
