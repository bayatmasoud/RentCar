import 'package:flutter/material.dart';

class SideSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(28.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Max Amini',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.favorite_outlined,
                  color: Colors.red[800],
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                Text('My favorite Cars')
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.location_city,
                  color: Colors.amber,
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                Text('Find Nearest Cars')
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        Text('Change Language'),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Row(
                        children: [
                          SizedBox(width: 8.0),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/images/tr1.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Turkey'),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/images/usa.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('English'),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/images/iran.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Persian'),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      'asset/images/arabia.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('Arabic'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(Icons.exit_to_app),
                SizedBox(
                  width: 20.0,
                ),
                Text('Log out')
              ],
            )
          ],
        ),
      ),
    );
  }
}
