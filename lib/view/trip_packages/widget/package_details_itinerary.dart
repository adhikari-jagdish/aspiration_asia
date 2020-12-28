import 'package:aspirationasia/utils/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aspirationasia/utils/strings.dart';

class PackageDetailsItinerary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            FractionallySizedBox(
              widthFactor: 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.3),
                        ),
                        child: Text(
                          'Day 01: ',
                          style: CustomStyle.blackTextBold18.copyWith(fontSize: 26.ssp),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('Kathmandu Arrival'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(Strings.ITINERARY_SAMPLE),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Breakfast',
                      style: CustomStyle.blackTextSemiBold18.copyWith(fontSize: 26.ssp),
                    ),
                  ),

                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.3,
              child: ClipRRect(
                child: Image(
                  width: 100.w,
                  height: 200.h,
                  image: NetworkImage('https://i.ibb.co/s5tkhX6/north-east-tour-with-lachung.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Divider()
      ],
    );
  }
}
