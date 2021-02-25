import 'package:flutter/material.dart';
import 'package:layout/widget/benner.dart';
import 'package:layout/widget/chartinformation.dart';
import 'package:layout/widget/titleandsubtitle.dart';

import '../../widget/discoverlistitem.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ChartInformation(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: natureDiscoveryData(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Benner(),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleAndSubtitle(
            title: "Notable Works",
            subTitle: "Base on the popularty of articles",
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DiscoverListItime();
              },
            ),
          ),
        ],
      ),
    );
  }
}
