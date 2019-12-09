import 'package:assinaturadashapp/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:assinaturadashapp/widgets/cardSummary.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: <Widget>[
          _summaryCard(context),
          _card(context)
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
                    CardItemSummary(
                      cardTitleLarge: '1.372',
                      cardSubtitle: 'Assinantes ativos',
                      icon: LineAwesomeIcons.users,
                    ),
                    CardItemSummary(
                      cardTitleLarge: 'R\$\:88,85',
                      cardSubtitle: 'Ticket médio',
                      icon: LineAwesomeIcons.shopping_cart,
                    ),
                    CardItemSummary(
                      cardTitleLarge: '120.527',
                      cardSubtitle: 'RBV previsto',
                      icon: LineAwesomeIcons.money,
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

Widget _card(BuildContext context) {
  return Container(
    child: Center(child: Text('aqui'),),
  );
}