import 'package:flutter/material.dart';

class StoriPage extends StatelessWidget {
  const StoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff404040),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 600,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_outlined,
                          color: Color(0xffFFFFFF),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "New Story",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Container(
                      width: 309,
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Design Stuff",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3290EC),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Here is the link of MacOS design system on Figma community:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "https://www.figma.com/community/file/1143831050419793062/apple-macos-12-design-system-for-figma",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3290EC),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Figma Commiunity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 278,
                              height: 150,
                              color: Color(0xff838383),
                              child: Image.network(
                                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fphoto.downloadefilm.ir%2Fcontent%2F742404&psig=AOvVaw30HW85tRhJNnbjY7O1bDM-&ust=1701420431118000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKj56J2r64IDFQAAAAAdAAAAABAE"),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Apple MacOS Design System",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "Figma File",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 328,
                      height: 36,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Add a caption...",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 0.40),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.compost_rounded,
                              color: Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.40),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.create_outlined,
                  color: Color(0xffFFFFFF),
                ),
                Icon(
                  Icons.sick_outlined,
                  color: Color(0xffFFFFFF),
                ),
                Icon(
                  Icons.text_fields_rounded,
                  color: Color(0xffFFFFFF),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Icon(
                    Icons.tune,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                Container(
                  width: 70,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "NEXT",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffFFFFFF),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff3290EC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color(0xff000000),
      ),
    );
  }
}
