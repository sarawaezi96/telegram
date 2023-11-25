import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        width: double.infinity,
        height: 50,
        color: Color(0xffEDEDED),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(
                Icons.add_reaction_rounded,
                color: Color(0xff838383),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Massage",
                    suffixStyle: TextStyle(
                      color: Color(
                        0xff838383,
                      ),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.attachment_sharp,
                color: Color(0xff838383),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.emergency_recording_rounded,
                color: Color(0xff838383),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
