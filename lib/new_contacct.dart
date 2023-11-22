import 'package:flutter/material.dart';

class newcontacts extends StatelessWidget {
  const newcontacts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Contact",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3290EC),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.hdr_auto_sharp,
                      size: 130,
                      color: Color(0xffDCDCDC),
                    ),
                  ],
                ),
              ),
              width: double.infinity,
              height: 200,
              color: Color(0xffEDEDED),
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintStyle: TextStyle(
                        color: Color(0xff0000),
                      ),
                      suffixIcon: Icon(
                        Icons.disabled_by_default_outlined,
                        color: Color(0xffE14D4D),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xff3290EC),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Phone",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff3290EC),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
