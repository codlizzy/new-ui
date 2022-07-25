import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/emoji.dart';
import 'package:flutter_application_1/home/exercises_item.dart';

class Screenhome extends StatefulWidget {
  const Screenhome({Key? key}) : super(key: key);

  @override
  State<Screenhome> createState() => _ScreenhomeState();
}

class _ScreenhomeState extends State<Screenhome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.fastLinearToSlowEaseIn,
        items: const [
          Icon(
            Icons.checklist,
            size: 30,
          ),
          Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.settings,
            size: 30,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 14, 95, 160),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // text hi amir
                      const Text(
                        'Hi , Amir',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 27),
                      ),
                      // icon notfications
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue[600]),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // search box
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[600]),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'search...',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // text and icon more
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you Feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            // emoje
            Emoji_widget(),
            const SizedBox(
              height: 25,
            ),
            // decoration radius top left and top right
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 26),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Color.fromARGB(255, 234, 233, 233)),
                // text exercises => icon more
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // listview Exersies
                    Expanded(
                      child: ListView.builder(
                          itemCount: iteamlist.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 11,
                                                        horizontal: 11),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color:
                                                        iteamlist[index].Color),
                                                child: Icon(
                                                  iteamlist[index].icon,
                                                  size: 30,
                                                  color: Colors.white,
                                                )),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 25),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    iteamlist[index].name,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 40),
                                                    child: Text(
                                                      iteamlist[index]
                                                          .bouttonname,
                                                      style: const TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Icon(Icons.more_horiz),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// emoji widget
class Emoji_widget extends StatelessWidget {
  Emoji_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Emoji(
              emoji: '😩',
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'bad',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Emoji(
              emoji: '🙂',
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'fine',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Emoji(
              emoji: '😄',
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'well',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Emoji(
              emoji: '🥳',
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Excellent',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
