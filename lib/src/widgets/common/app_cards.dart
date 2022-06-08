import 'package:flutter/material.dart';

import '../../utils/app_constants_util.dart';
import '../../utils/color_palette_util.dart';

class LeadersBoardCard extends StatelessWidget {
  final String? imageAvator;
  final String? userName;
  final String? points;
  final Key? key;

  LeadersBoardCard({this.imageAvator, this.points, this.key, this.userName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget _text(String text) {
      return Text(text,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: 18, color: ColorPallete.darkColor));
    }

    return Padding(
        padding: EdgeInsets.all(AppConstants.pageAllPadding),
        child: Container(
          height: MediaQuery.of(context).size.height * .11,
          width: double.infinity,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 4.0,
                    ),
                  ],
                  color: Colors.white),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                _text(userName!),
                SizedBox(
                  width: MediaQuery.of(context).size.height * .01,
                ),
                _text(points!),
              ])),
        ));
  }
}
