import 'package:flutter/material.dart';

import '../../utils/app_constants_util.dart';
import '../../utils/app_urls.dart';
import '../../utils/color_palette_util.dart';

class LeadersBoardCard extends StatelessWidget {
  final String imageAvator;
  final String userName;
  final String points;
  final int rank;

  LeadersBoardCard(this.imageAvator, this.points, this.rank, this.userName);
  @override
  Widget build(BuildContext context) {
    Widget _text(String text) {
      return Text(text,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18));
    }

    Widget _textSubtitle(String text) {
      return Text(text,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 18,
              ));
    }

    return Padding(
        padding: EdgeInsets.all(AppConstants.pageAllPadding),
        child: ListTile(
          leading: CircleAvatar(
            radius: 40,
            child: Image.asset(AppUrls.gentIcon),
          ),
          title: _text(userName),
          subtitle: _textSubtitle(points),
          trailing: _text("#$rank"),
        ));
  }
}

class SquareCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? art;

  SquareCard({this.title, this.subtitle, this.art});
  @override
  Widget build(BuildContext context) {
    Widget _text({String? text}) {
      return Text(text ?? '',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18));
    }

    return Padding(
        padding: EdgeInsets.all(AppConstants.pageAllPadding),
        child: Container(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.height * .2,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: ColorPallete.greyColor),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      art!,
                      width: 50,
                      height: 50,
                    ),
                    _text(text: title),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .01,
                    ),
                    _text(text: subtitle),
                  ])),
        ));
  }
}
