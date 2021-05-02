import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesome.plus_squared_alt,
            size: 30,
          ),
          onPressed: () {},
        ),
        title: Image.asset(
          'images/insta_logo.png',
          alignment: Alignment.center,
          height: 46,
        ),
        actions: [
          IconButton(
            icon: Icon(
              FontAwesome5.facebook_messenger,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return index == 0 ? status(context) : feed();
              }),
        ),
      ),
    );
  }

  Widget status(context) {
    return Container(
      height: 106,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black12,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 72,
              width: 72,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: index == 0
                    ? LinearGradient(
                        colors: [Colors.white, Colors.white],
                      )
                    : LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.pink, Colors.orange.shade300],
                      ),
              ),
              child: index == 0
                  ? Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(160, 160, 160, 1),
                      ),
                      alignment: Alignment.bottomRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(width: 2, color: Colors.white),
                              left: BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          child: Icon(
                            FontAwesome.plus_circled,
                            color: Colors.blue,
                            size: 22,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 4, color: Colors.white),
                        color: Color.fromRGBO(160, 160, 160, 1),
                      ),
                    ),
            ),
            Container(
              height: 10,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget feed() {
    return Column(
      children: [
        Container(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile image
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.pink, Colors.orange.shade300],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        color: Color.fromRGBO(160, 160, 160, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  // profile name
                  Container(
                    height: 14,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.black12,
                    ),
                  ),
                ],
              ),
              // actions
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.black26,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(FontAwesome.heart_empty),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Iconic.comment_alt2),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesome5.telegram_plane),
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(FontAwesome.bookmark_empty),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              height: 12,
              width: 75,
              margin: EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  height: 12,
                  width: 75,
                  margin: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black26,
                  ),
                ),
                Container(
                  height: 12,
                  width: 200,
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 12,
              width: 200,
              margin: EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black12,
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  margin: EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black26,
                  ),
                ),
                SizedBox(width: 12),
                Text(
                  'Add a comment...',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
