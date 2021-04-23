import 'package:flutter/material.dart';
import 'package:responsive_portfolio_test/widgets/body.dart';
import 'package:responsive_portfolio_test/widgets/button_row.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 3,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.yellow,
                  foregroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?u=fake@pravatar.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Paulo",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
        //leading:
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
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
                  child: Icon(Icons.send_sharp),
                ),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contact me',
                    style: TextStyle(color: Colors.black54),
                  ),
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: SizedBox(height: 59, child: ButtonRow()),
              )),
          // Social Buttons
          // Body
        ],
      ),
    );
  }
}
