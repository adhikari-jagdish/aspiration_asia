import 'package:aspirationasia/model/adventures_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sized_context/sized_context.dart';

class Adventures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPx,
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: adventures.length,
        separatorBuilder: (context, index){
          return SizedBox(
            width: 40.w,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
            child: Column(
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  child: SvgPicture.asset(
                    adventures[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(adventures[index].name)
              ],
            ),
          );
        },
      ),
    );
  }
}
