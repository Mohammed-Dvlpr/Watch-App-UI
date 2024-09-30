import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 310,
              child: Row(
                children: [sideBarList()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget sideBarList() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RichText(
              text: const TextSpan(
                  text: 'E',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.amber,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: 'BUY',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ))
                  ]),
            ),
          ),
        ],
      );
}
