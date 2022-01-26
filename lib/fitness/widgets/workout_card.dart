import 'package:fluttclone/fitness/constants.dart';
import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  final Text workoutText;
  final Text minutes;
  final Text topic;

  const WorkoutCard({
    required this.workoutText,
    required this.minutes,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
        color: MAIN_COLOR,
      ),
      margin: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 30.0,
        bottom: 35.0,
      ),
      child: OverflowBox(
        maxHeight: 300.0,
        maxWidth: 350.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  workoutText,
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        minutes,
                        Container(
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        topic,
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 12.0,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff393938),
                    ),
                  ),
                ],
              ),
            ),
            Image(
              image: AssetImage(
                'assets/boxer.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
