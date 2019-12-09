import 'package:assinaturadashapp/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class CardItemSummary extends StatelessWidget {
  
  CardItemSummary({
    @required this.cardTitleLarge,
    @required this.cardSubtitle,
    this.icon,
  });

  final String cardTitleLarge;
  final String cardSubtitle;
  final IconData icon;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Transform(
            transform: Matrix4.translationValues(0, -5, 0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Icon(
                icon,
                size: 46.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  cardTitleLarge,
                  style: Styles.cardFirtSumaryItemText,
                ),
                Transform(
                  transform: Matrix4.translationValues(0, -8, 0),
                  child: Text(
                    cardSubtitle,
                    style: Styles.cardSecondarySumaryItemText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}