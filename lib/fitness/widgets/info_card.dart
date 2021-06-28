import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final Color backgroundColor;
  final Text headerText;
  final Text subText;

  const InfoCard({
    required this.backgroundColor,
    required this.headerText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          headerText,
          subText,
        ],
      ),
      padding: const EdgeInsets.all(20.0),
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
        color: backgroundColor,
      ),
    );
  }
}
