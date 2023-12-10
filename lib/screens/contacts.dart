import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/new_contacct.dart';
import 'package:flutter_application_1/widget/bot.dart';
import 'package:flutter_application_1/widget/widget.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold( 
          appBar: PreferredSize(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Contacts",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0xff838383),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Chates(
                      icon: Icons.location_on,
                      title: "Find People Nearby",
                    ),
                    Divider(
                      color: Color(0xff838383),
                    ),
                    Chates(
                      icon: Icons.contacts,
                      title: "Contact Categories",
                    ),
                    Divider(
                      color: Color(0xff838383),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NewContacts(),
                          ),
                        );
                      },
                      child: Chates(
                        icon: Icons.contact_page_sharp,
                        title: "Add New Contact",
                      ),
                    ),
                    Divider(
                      color: Color(0xff838383),
                    ),
                    Chates(
                      icon: Icons.add,
                      title: "Invite Friends",
                    ),
                    Divider(
                      color: Color(0xff838383),
                    ),
                  ],
                ),
              ),
              width: double.maxFinite,
              height: 224,
              color: Color(0xffEDEDED),
            ),
            preferredSize: Size(double.infinity, 260),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                MyWidget(
                  title: "Kristin Watson",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Courtney Henry",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Devon Lane",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Robert Fox",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Kristin Watson",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Floyd Miles",
                  description: "last seen recently",
                ),
                Divider(
                  color: Color(0xff838383),
                ),
                MyWidget(
                  title: "Jane Cooper",
                  description: "last seen recently",
                ),
              ],
            ),
          ),
          bottomNavigationBar: botom(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
