import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Row(
              children: [
                SizedBox(width: 20),
                // profile image
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(180, 180, 180, 1),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    // profile name
                    Container(
                      height: 12,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(200, 200, 200, 1),
                      ),
                    ),
                    SizedBox(height: 8),
                    // info
                    Container(
                      height: 11,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(220, 220, 220, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
