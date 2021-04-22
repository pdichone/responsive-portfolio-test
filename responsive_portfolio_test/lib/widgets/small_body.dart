import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_portfolio_test/widgets/button_row.dart';

class SmallBody extends StatelessWidget {
  //SmallBody({Key key}) : super(key: key);

  var projectsList = [
    {
      'title': 'Building a Cat',
      'subtitle': 'Great client',
      'image': 'https://picsum.photos/id/100/400/300'
    },
    {
      'title': 'Connekto',
      'subtitle': 'A Flutter app for nerds',
      'image': 'https://picsum.photos/id/1014/400/300'
    },
    {
      'title': 'Been There',
      'subtitle': 'Save places you\'ve visited',
      'image': 'https://picsum.photos/id/3/400/300'
    },
    {
      'title': 'Bengo',
      'subtitle': 'Flutter email app',
      'image': 'https://picsum.photos/id/1025/400/300'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        ' I\'m Paulo.\n A software developer \n and a teacher',
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 44.5),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 60),
                          child: TextButton.icon(
                              style: TextButton.styleFrom(
                                  textStyle: TextStyle(color: Colors.black12),
                                  backgroundColor: Colors.amberAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  )),
                              onPressed: () {},
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.email_outlined),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Drop me a line',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 60.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "My Projects",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      fontFamily: "Open Sans"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: projectsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.work),
                                    title: Text(projectsList[index]['title']),
                                    subtitle:
                                        Text(projectsList[index]['subtitle']),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.network(
                                        projectsList[index]['image']),
                                  ),
                                  // ListTile(
                                  //   title: Container(
                                  //     child: SizedBox(
                                  //       width: 300,
                                  //       height: 300,
                                  //       child: Image.network(
                                  //           'https://picsum.photos/400/300'),
                                  //     ),
                                  //   ),
                                  //   contentPadding: const EdgeInsets.all(23.0),
                                  // ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: Color(0XFFFBEFD9),
                    padding: EdgeInsets.all(12.0),
                    child: ButtonRow(
                      size: MainAxisSize.max,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
