import 'package:flutter/material.dart';
import 'package:fluttermyui2/pages/details_page.dart';
import 'package:fluttermyui2/styleguide/colors.dart';
import 'package:fluttermyui2/widgets/appbar.dart';
import 'package:fluttermyui2/widgets/info_card.dart';
import 'package:fluttermyui2/widgets/line_chart.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
            decoration: BoxDecoration(
              color: fourthColor.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  iconSvg: Icons.local_hospital,
                  title: "Confirmed Cases",
                  iconColor: fiveColor,
                  effectedNum: 3025,
                  press: () {},
                ),
                InfoCard(
                  iconSvg: Icons.sentiment_very_dissatisfied,
                  title: "Total Deaths",
                  iconColor: fiveColor,
                  effectedNum: 56,
                  press: () {},
                ),
                InfoCard(
                  iconSvg: Icons.directions_run,
                  title: "Total Recovered",
                  iconColor: fiveColor,
                  effectedNum: 2855,
                  press: () {},
                ),
                InfoCard(
                  iconSvg: Icons.airline_seat_flat,
                  title: "New Cases",
                  iconColor: fiveColor,
                  effectedNum: 7,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Preventions",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  buildPreventation(),
                  SizedBox(height: 10),
                  buildHelpCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class buildPreventation extends StatelessWidget {
  const buildPreventation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        PreventionCard(
          imageIcon: "assets/images/Asset-1.png",
          title: "Wear mask",
        ),
        PreventionCard(
          imageIcon: "assets/images/Asset-2.png",
          title: "Wash hand",
        ),
        PreventionCard(
          imageIcon: "assets/images/Asset-3.png",
          title: "Boil your food",
        ),
        PreventionCard(
          imageIcon: "assets/images/Asset-4.png",
          title: "Avoid contact",
        ),
      ],
    );
  }
}

class buildHelpCard extends StatelessWidget {
  const buildHelpCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .52,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: mainGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dial 999 for \nMedical Help!\n",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "If any symptoms appear",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Image.asset('assets/images/Asset-5.png'),
          ),
        ],
      ),
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String imageIcon;
  final String title;

  const PreventionCard({
    Key key,
    this.imageIcon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          imageIcon,
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.body2.copyWith(color: secondColor),
        ),
      ],
    );
  }
}
