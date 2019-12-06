import 'package:assinaturadashapp/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          _summaryCard(context),
        ],
      ),
    );
  }
}

Widget _summaryCard(BuildContext context) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x510091FF),
                      blurRadius: 15.0,
                      offset: Offset(0, 5.0),
                    )
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment(
                        1.0, 0.3), // 10% of the width, so there are ten blinds.
                    colors: [
                      const Color(0xff32C5FF),
                      const Color(0xFF0091FF),
                    ], // whitish to gray
                  ),
                ),
                padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        LineAwesomeIcons.user_plus,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      title: Text(
                        "1.372",
                        style: Styles.cardFirtSumaryItemText,
                      ),
                      subtitle: Text(
                        "Assinantes ativos",
                        style: Styles.cardSecondarySumaryItemText,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        LineAwesomeIcons.user_plus,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      title: Text(
                        "1.372",
                        style: Styles.cardFirtSumaryItemText,
                      ),
                      subtitle: Text(
                        "Assinantes ativos",
                        style: Styles.cardSecondarySumaryItemText,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        LineAwesomeIcons.user_plus,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      title: Text(
                        "1.372",
                        style: Styles.cardFirtSumaryItemText,
                      ),
                      subtitle: Text(
                        "Assinantes ativos",
                        style: Styles.cardSecondarySumaryItemText,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
