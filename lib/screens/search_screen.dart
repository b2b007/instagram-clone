import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(240, 240, 240, 1),
          ),
          child: Row(
            children: [
              SizedBox(width: 12),
              Icon(
                FontAwesome.search,
                color: Color.fromRGBO(180, 180, 180, 1),
                size: 18,
              ),
              SizedBox(width: 12),
              Text(
                'Search',
                style: TextStyle(
                  color: Color.fromRGBO(180, 180, 180, 1),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera, size: 28),
            onPressed: () {},
          ),
          SizedBox(width: 8),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(36),
          child: Container(
            height: 30,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 6),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 75,
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: null,
                  ),
                );
              },
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 50,
          itemBuilder: (context, index) => Container(
            height: 100,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              color: Color.fromRGBO(200, 200, 200, 1),
            ),
          ),
        ),
      ),
    );
  }
}
