import 'package:aspirationasia/utils/integers.dart';
import 'package:aspirationasia/utils/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sized_context/sized_context.dart';

class PackageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: context.widthPx,
              height: context.heightPx / 3,
              decoration: BoxDecoration(
                image: DecorationImage(colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver), image: NetworkImage('https://i.ibb.co/k4nsY2k/pashupatinath.jpg'), fit: BoxFit.cover),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 75.w,
                          height: 75.h,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.white),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: Integers.SIZE_TWENTY,
                            color: Colors.teal,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 75.w,
                          height: 75.h,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.teal),
                          child: IconButton(
                            icon: Icon(Icons.share),
                            iconSize: Integers.SIZE_TWENTY,
                            color: Colors.white,
                            onPressed: () => {},
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          width: 75.w,
                          height: 75.h,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.teal),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.heart),
                            iconSize: Integers.SIZE_TWENTY,
                            color: Colors.white,
                            onPressed: () => {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'Naturally Nepal Tour',
                      style: CustomStyle.whiteTextBold.copyWith(fontSize: 50.ssp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      '(04 N / 05 D)',
                      style: CustomStyle.whiteTextBold.copyWith(fontSize: 30.ssp),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    width: context.widthPx,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('hhc'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
