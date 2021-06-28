import 'dart:ui';

import 'package:fluttclone/fitness/constants.dart';
import 'package:fluttclone/fitness/widgets/info_card.dart';
import 'package:flutter/material.dart';

class Fitness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BACKGROUND_COLOR,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Icon(
            Icons.menu,
            size: 40.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
            ),
            child: Icon(
              Icons.notifications_outlined,
              size: 40.0,
            ),
          ),
        ],
      ),
      backgroundColor: BACKGROUND_COLOR,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fitness',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                  child: Row(
                    children: [
                      Text(
                        'overview',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.sports_basketball,
                        color: Colors.orange,
                        size: 40.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InfoCard(
                backgroundColor: Colors.grey,
                headerText: Text(
                  '70 points',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subText: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              InfoCard(
                backgroundColor: Colors.purple,
                headerText: Text(
                  '4 km',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subText: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
