import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: SafeArea(
        child: Container(
          child: Container(
            width: double.infinity,
            height: 250,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset.fromDirection(90),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assests/images/poeple.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Riska Widarsono',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Riska Widarsono',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[350],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: OutlineButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Chat",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
