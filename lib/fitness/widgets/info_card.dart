import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final Color backgroundColor;
  final Text headerText;
  final Text subText;
  final EdgeInsetsGeometry? cardMargin;

  const InfoCard({
    required this.backgroundColor,
    required this.headerText,
    required this.subText,
    this.cardMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: headerText,
          ),
          subText,
        ],
      ),
      padding: const EdgeInsets.all(20.0),
      margin: cardMargin,
      height: 120.0,
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
