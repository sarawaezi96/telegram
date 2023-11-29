import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bottom.dart';

class ChannelAdminSide extends StatelessWidget {
  const ChannelAdminSide({super.key});

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
                          "Design Stuff",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "1.8K Subscribers",
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
        bottomNavigationBar: bottom(),
      ),
    );
  }
}
