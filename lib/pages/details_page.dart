import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyui2/styleguide/colors.dart';
import 'package:fluttermyui2/widgets/weekly_chart.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildTitleWithMoreIcon(),
                  SizedBox(height: 10),
                  buildCaseNumber(context),
                  SizedBox(height: 10),
                  Text(
                    'From Health Center',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                        fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  WeeklyChart(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildInfoRichText(
                          percentage: "5.34%", title: "From Last Week"),
                      buildInfoRichText(
                          percentage: "3.23%", title: "Recovery Rate"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  buildTitleWithMoreIcons(),
                  SizedBox(height: 10),
                  Image.asset('assets/images/Asset-6.png' ,width: 50, height: 40,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRichText({String title, String percentage}) {
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: '$percentage \n',
              style: TextStyle(fontSize: 20, color: secondColor),
            ),
            TextSpan(
              text: title,
              style: TextStyle(fontSize: 12, color: thirdColor, height: 1.5),
            ),
          ]),
        ),
      ],
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '547 ',
          style: Theme.of(context)
              .textTheme
              .display3
              .copyWith(color: secondColor, height: 1.2),
        ),
        Text(
          '5.9%',
          style: TextStyle(color: secondColor),
        ),
        Icon(
          Icons.trending_up,
          color: secondColor,
        ),
      ],
    );
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "New Cases",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        Icon(
          Icons.more_vert,
          color: fiveColor,
        ),
      ],
    );
  }

  Row buildTitleWithMoreIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Thailand',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15),
        ),
        Icon(
          Icons.more_vert,
          color: fiveColor,
        )
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: fourthColor.withOpacity(0.03),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: secondColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: secondColor,
          ),
        )
      ],
    );
  }
}
