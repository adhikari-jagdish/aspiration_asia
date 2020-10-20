import 'package:aspirationasia/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key key,
    this.title,
    this.text,
    this.image,
  }) : super(key: key);
  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          title,
          style: TextStyle(
            fontSize: 36.0,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        SvgPicture.asset(
          image,
          height: 200.0,
          width: 200.0,
        ),
      ],
    );
  }
}
