import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  List<Map<String, dynamic>> watches = [
    {'icon': Icons.watch, 'text': 'Watches'},
    {'icon': Icons.alarm, 'text': 'Clocks'},
    {'icon': Icons.punch_clock, 'text': 'Smart'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 310,
              child: Row(
                children: [sideBarList(), watchAddContainer()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget watchAddContainer() => Expanded(
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple.shade900, Colors.black]),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  topRight: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ],
              ),
              const Text(
                'Grand Sale, Starts Now',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white),
              ),
              RichText(
                text: const TextSpan(
                    text: '15%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                    children: [
                      TextSpan(
                          text: ' OFF',
                          style: TextStyle(fontSize: 12, color: Colors.white))
                    ]),
              ),
              Transform(
                transform: Matrix4.rotationZ(0.10),
                child: Container(
                  height: 150,
                  width: 220,
                  decoration: const BoxDecoration(
                      // color: Colors.amber,
                      image: DecorationImage(
                    image: AssetImage("assets/img_1.jpg"),
                  )),
                ),
              )
            ],
          )));

  Widget sideBarList() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            alignment: Alignment.topCenter,
            color: Colors.amberAccent,
            height: 250,
            width: 70,
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: watches.length,
                itemBuilder: (context, index) {
                  final watch = watches[index];
                  return Container(
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(12))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          watch['icon'],
                          color: Colors.grey,
                        ),
                        Text(
                          watch['text'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      );
}
