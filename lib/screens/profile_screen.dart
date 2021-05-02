import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.lock,
              size: 18,
              color: Colors.black,
            ),
            SizedBox(width: 4),
            Text(
              'bhavin7306',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(FontAwesome.plus_squared_alt), onPressed: () {}),
          IconButton(icon: Icon(Octicons.three_bars), onPressed: () {}),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // profile image
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(left: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'data:image/jpeg;base64,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',
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                // posts
                Column(
                  children: [
                    Text('1'),
                    Text('Posts'),
                  ],
                ),
                // Followers
                Column(
                  children: [
                    Text('189'),
                    Text('Followers'),
                  ],
                ),
                // Following
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Text('271'),
                      Text('Following'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // profile name
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('Bhavin Sojitra'),
            ),
            // edit profile button
            Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: Color.fromRGBO(200, 200, 200, 1),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 12),
            // posts and saved
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.grid_on),
                Icon(
                  Octicons.saved,
                  color: Color.fromRGBO(230, 230, 230, 1),
                ),
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
