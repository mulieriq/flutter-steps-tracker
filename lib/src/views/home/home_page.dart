import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khutaa/src/utils/app_extenstions_util.dart';
import 'package:khutaa/src/views/history/history_screen.dart';
import 'package:khutaa/src/views/leaders_board/leaders_board.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_urls.dart';
import '../../utils/curve.dart';
import '../../utils/string_constants_util.dart';
import '../../widgets/common/app_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _circle(String text) {
    return Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 4,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppUrls.appLogo,
              width: 50,
              height: 50,
            ),
            Center(
              child: Text(
                text.toString(),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Text(
              StringConstants.steps,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Image.asset(
              AppUrls.lightBackground,
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight,
            ),
            CustomPaint(size: Size(50.h, 250.w), painter: CurvePainter()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            StringConstants.welcome,
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            "Eric",
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(child: _circle("700")),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquareCard(
                        title: StringConstants.healthPoints,
                        subtitle: "1200",
                        art: AppUrls.healthIcon,
                      ),
                      SquareCard(
                        title: StringConstants.collectReward,
                        art: AppUrls.redeemIcon,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(
                FontAwesomeIcons.sun,
                size: 16,
              ),
              label: StringConstants.light), //modal
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.language,
              size: 16,
            ),
            label: StringConstants.changeLanguange,
          ), // modal
          SpeedDialChild(
              onTap: () => context.appNavigatorPush(LeadersBoard()),
              child: Icon(
                FontAwesomeIcons.crown,
                size: 16,
              ),
              label: StringConstants.leadersBoard), //screen
          SpeedDialChild(
              onTap: () => context.appNavigatorPush(HistoryScreen()),
              child: Icon(
                FontAwesomeIcons.clockRotateLeft,
                size: 16,
              ),
              label: StringConstants.history) //screen
        ],
      ),
    );
  }
}
