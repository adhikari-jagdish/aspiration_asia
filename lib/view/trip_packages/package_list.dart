import 'package:aspirationasia/utils/integers.dart';
import 'package:aspirationasia/utils/style/custom_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sized_context/sized_context.dart';

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: context.heightPx / 3,
                width: context.widthPx,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Integers.SIZE_THIRTY),
                      bottomRight: Radius.circular(Integers.SIZE_THIRTY),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.srcOver),
                          image: NetworkImage(
                              'https://i.ibb.co/k4nsY2k/pashupatinath.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Integers.SIZE_THIRTY),
                    bottomRight: Radius.circular(Integers.SIZE_THIRTY),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Integers.SIZE_TEN, vertical: Integers.SIZE_TEN),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: Integers.SIZE_THIRTY,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: Integers.SIZE_THIRTY,
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: Integers.SIZE_TWENTY_FIVE,
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: Integers.SIZE_TWENTY,
                bottom: Integers.SIZE_TWENTY,
                child: Text(
                  'Nepal',
                  style: CustomStyle.whiteTextBold.copyWith(fontSize: 65.ssp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: context.widthPx,
                  padding: EdgeInsets.all(Integers.SIZE_TWELVE),
                  margin: EdgeInsets.all(Integers.SIZE_TWELVE),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(Integers.SIZE_TWENTY),
                  ),
                  child: Wrap(
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ClipRRect(
                            child: Image(
                              width: 100.w,
                              height: 210.h,
                              image: NetworkImage(
                                  'https://i.ibb.co/s5tkhX6/north-east-tour-with-lachung.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 270.w,
                                  child: Text(
                                    'Naturally Nepal Tour',
                                    style: CustomStyle.blackTextBold18
                                        .copyWith(fontSize: 30.ssp),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('\$120',
                                        style: CustomStyle.blackTextBold18
                                            .copyWith(fontSize: 28.ssp)),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text('\₹8999',
                                        style: CustomStyle.blackTextBold18
                                            .copyWith(fontSize: 28.ssp)),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Text(
                                      'Per Person',
                                      style: CustomStyle.blackTextSemiBold18
                                          .copyWith(
                                              color: Colors.grey,
                                              fontSize: 20.ssp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              'Cultural Tour',
                              style: CustomStyle.blackTextSemiBold18
                                  .copyWith(fontSize: 26.ssp),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'Breakfast',
                                    style: CustomStyle.blackTextSemiBold18
                                        .copyWith(fontSize: 26.ssp),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text('Transport',
                                      style: CustomStyle.blackTextSemiBold18
                                          .copyWith(fontSize: 26.ssp)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
