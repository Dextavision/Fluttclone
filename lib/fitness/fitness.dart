import 'package:fluttclone/fitness/constants.dart';
import 'package:fluttclone/fitness/widgets/info_card.dart';
import 'package:fluttclone/fitness/widgets/workout_card.dart';
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
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Icon(
                          Icons.sports_basketball,
                          color: Colors.orange,
                          size: 40.0,
                        ),
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
              Expanded(
                child: InfoCard(
                  backgroundColor: GREY_CARD,
                  headerText: Text(
                    '70 points',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  subText: Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  cardMargin: const EdgeInsets.only(left: 30.0, right: 20.0),
                ),
                flex: 2,
              ),
              Expanded(
                child: InfoCard(
                  backgroundColor: MAIN_COLOR,
                  headerText: Text(
                    '4 km',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  subText: Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  cardMargin: const EdgeInsets.only(right: 30.0),
                ),
                flex: 1,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30.0, top: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Workouts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'View all >',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: WorkoutCard(
              workoutText: Text(
                "Starter\n"
                "Abs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              minutes: Text(
                '10 mins',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              topic: Text(
                'Starter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 30.0, right: 30.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: GREY_CARD,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                  ),
                  label: 'Favorites',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps_outlined,
                    color: Colors.white,
                  ),
                  label: 'Favorites',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
