import 'package:aspirationasia/utils/ImagePaths.dart';
import 'package:aspirationasia/utils/integers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Integers.SIZE_ONEFOURTYFOUR,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: Integers.SIZE_TWELVE),
                  padding: EdgeInsets.only(
                      left: Integers.SIZE_EIGHT, right: Integers.SIZE_FIVE),
                  height: Integers.SIZE_SIXTYFOUR,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Integers.SIZE_TWELVE),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: SvgPicture.asset(
                          ImagePaths.SERVICE_FLIGHT,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Integers.SIZE_TWELVE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Flight',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Best Fares',
                              style: TextStyle(fontSize: Integers.SIZE_TWELVE),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //margin: EdgeInsets.only(right: Integers.SIZE_EIGHT),
                  padding: EdgeInsets.only(
                      left: Integers.SIZE_EIGHT, right: Integers.SIZE_FIVE),
                  height: Integers.SIZE_SIXTYFOUR,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Integers.SIZE_TEN),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        child: SvgPicture.asset(
                          ImagePaths.SERVICE_TREKKING,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Integers.SIZE_TWELVE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Trekking',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Love Adventure',
                              style: TextStyle(fontSize: Integers.SIZE_TWELVE),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Integers.SIZE_SIXTEEN,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: Integers.SIZE_TWELVE),
                  padding: EdgeInsets.only(
                      left: Integers.SIZE_EIGHT, right: Integers.SIZE_FIVE),
                  height: Integers.SIZE_SIXTYFOUR,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Integers.SIZE_TWELVE),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: SvgPicture.asset(
                          ImagePaths.SERVICE_HOTEL,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Integers.SIZE_TWELVE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hotel',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Perfect Stay',
                              style: TextStyle(fontSize: Integers.SIZE_TWELVE),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  //margin: EdgeInsets.only(right: Integers.SIZE_EIGHT),
                  padding: EdgeInsets.only(
                      left: Integers.SIZE_EIGHT, right: Integers.SIZE_FIVE),
                  height: Integers.SIZE_SIXTYFOUR,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Integers.SIZE_TEN),
                    border: Border.all(color: Colors.black26, width: 1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        child: SvgPicture.asset(
                          ImagePaths.SERVICE_CAR_RENTAL,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Integers.SIZE_TWELVE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vehicle',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Safe Rides',
                              style: TextStyle(fontSize: Integers.SIZE_TWELVE),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
