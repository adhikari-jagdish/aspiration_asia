import 'package:aspirationasia/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aspirationasia/utils/custom_colour.dart';

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
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);

    return Column(
      children: [
        Spacer(flex: 2,),
        Text(
          title,
          style: TextStyle(
            fontSize: 70.ssp,
            color: CustomColor.welcomeTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 1),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 3),
        SvgPicture.asset(
          image,
          height: 400.h,
          width: 400.w,
        ),
      ],
    );
  }
}
