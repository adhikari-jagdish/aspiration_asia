import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/utils/integers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';

class Services extends StatelessWidget {
  ServiceResponse serviceResponse;

  Services({@required this.serviceResponse});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPx,
      height: 300,
      child: GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: serviceResponse.serviceData
            .map((serviceItem) => _serviceBody(context, serviceItem))
            .toList(),
      ),
    );
  }

  Widget _serviceBody(BuildContext context, item) {
    return Container(
      width: context.widthPx / 2,
      padding:
          EdgeInsets.only(left: Integers.SIZE_EIGHT, right: Integers.SIZE_FIVE),
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
            child: SvgPicture.network(
              item.imageUrl,
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
                  item.serviceName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Integers.SIZE_THIRTY.ssp),
                ),
                Text(
                  item.serviceExcerpt,
                  style: TextStyle(fontSize: Integers.SIZE_TWENTY.ssp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
