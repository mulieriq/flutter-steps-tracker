import 'package:flutter/material.dart';
import '../../utils/app_urls.dart';
import '../../utils/curve.dart';
import '../../utils/string_constants_util.dart';
import '../../widgets/common/app_cards.dart';
import 'package:sizer/sizer.dart';

class LeadersBoard extends StatefulWidget {
  const LeadersBoard({Key? key}) : super(key: key);

  @override
  State<LeadersBoard> createState() => _LeadersBoardState();
}

class _LeadersBoardState extends State<LeadersBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Stack(
              children: [
                CustomPaint(size: Size(50.h, 250.w), painter: CurvePainter()),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        StringConstants.leadersBoardScreenAppBarTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 25),
                      ),
                    ),
                    Center(
                      child: Container(
                        child:
                            Image.asset(AppUrls.leadersBoardIcon, height: 200),
                      ),
                    ),
                    Expanded(
                        child: ListView.separated(
                            itemCount: 8,
                            separatorBuilder: (context, _) => Divider(
                                  indent: 30,
                                  endIndent: 20,
                                ),
                            itemBuilder: (context, index) => LeadersBoardCard(
                                "aye", "89 points", index + 1, "Eric Muli")))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
