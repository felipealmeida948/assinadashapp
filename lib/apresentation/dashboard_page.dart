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
          _cardSubscriblesChannel(context),
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
                margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
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
                      cardTitleLarge: 'R\$\88,85',
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

Widget _cardSubscriblesChannel(BuildContext context) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x512A2A2A),
                      blurRadius: 15.0,
                      offset: Offset(0, 5.0),
                    )
                  ],
                ),
                padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Assinantes por',
                                style: Styles.cardSecondarySumaryItemText,
                              ),
                              Transform(
                                transform: Matrix4.translationValues(0, -8, 0),
                                child: Text(
                                  'Canal',
                                  style: Styles.cardTitleSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
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
