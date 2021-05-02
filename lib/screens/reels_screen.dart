import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

class ReelsScreen extends StatelessWidget {
  final PageController pageController = new PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reels',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Linecons.camera, color: Colors.white, size: 24),
            onPressed: () {},
          ),
          SizedBox(width: 12),
        ],
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (context, index) => page(),
        ),
      ),
    );
  }

  Widget page() {
    return Stack(
      children: [
        // content
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // profile image
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(left: 14, right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(160, 160, 160, 1),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // profile name
                        Container(
                          height: 10,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(200, 200, 200, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        // extra info
                        Container(
                          height: 10,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 14),
                // title
                Container(
                  height: 12,
                  width: 120,
                  margin: EdgeInsets.only(left: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromRGBO(220, 220, 220, 1),
                  ),
                ),
                SizedBox(height: 14),
                // song description
                Container(
                  height: 12,
                  width: 220,
                  margin: EdgeInsets.only(left: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                ),
                SizedBox(height: 14),
              ],
            ),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                displayIcon(FontAwesome.heart_empty, true),
                displayIcon(Linecons.comment, true),
                displayIcon(FontAwesome5.telegram_plane, false),
                displayIcon(Icons.more_vert, false),
              ],
            ),
            SizedBox(width: 14),
          ],
        ),
      ],
    );
  }

  Widget displayIcon(IconData icon, bool txt) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        txt == false
            ? Container()
            : Container(
                height: 8,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
              ),
        SizedBox(height: 8),
      ],
    );
  }
}
