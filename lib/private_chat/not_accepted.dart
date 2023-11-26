import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/bottom.dart';

class NotAccepted extends StatelessWidget {
  const NotAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 114,
                color: Color(0xffEDEDED),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xff838383),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            color: Color(0xff838383),
                            borderRadius: BorderRadius.circular(48)),
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Eliza",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Icon(
                                  Icons.lock_outline,
                                  color: Color(0xff60C255),
                                ),
                              ],
                            ),
                            Text(
                              "last seen recently",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff838383),
                              ),
                            ),
                          ],
                        ),
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
                ),
              ),
            ],
          ),
          preferredSize: Size(double.infinity, 114),
        ),
        bottomNavigationBar: bottom(),
      ),
    );
  }
}
