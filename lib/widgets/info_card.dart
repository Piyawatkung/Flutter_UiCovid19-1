import 'package:flutter/material.dart';
import 'package:fluttermyui2/styleguide/colors.dart';
import 'package:fluttermyui2/widgets/line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effectedNum;
  final Color iconColor;
  final IconData iconSvg;
  final Function press;

  const InfoCard({
    Key key,
    this.title,
    this.effectedNum,
    this.iconColor,
    this.iconSvg,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: press,
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            // constraints.maxWidth provide us the available width for the widget
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: fourthColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          iconSvg,
                          color: secondColor,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: fiveColor),
                            children: [
                              TextSpan(
                                text: "$effectedNum \n",
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "People",
                                style: TextStyle(
                                    fontSize: 12,
                                    height: 2,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: LineReportChart(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
