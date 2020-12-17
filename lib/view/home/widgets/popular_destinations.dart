import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/utils/integers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sized_context/sized_context.dart';

class PopularDestinations extends StatelessWidget {
  DestinationResponse destinationResponse;

  PopularDestinations({this.destinationResponse});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPx,
      height: 280.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destinationResponse.destinationData.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Integers.SIZE_EIGHT),
            ),
            child: Container(
              width: 250.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Integers.SIZE_EIGHT),
                  border: Border.all(color: Colors.black26, width: 1.0)),
              child: Padding(
                padding: const EdgeInsets.all(Integers.SIZE_TEN),
                child: Column(
                  //  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: Integers.SIZE_SEVENTY,
                      height: Integers.SIZE_SEVENTY,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(destinationResponse
                              .destinationData[index].imageUrl),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Integers.SIZE_EIGHT,
                    ),
                    Text(
                      destinationResponse
                          .destinationData[index].destinationName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.ssp),
                    ),
                    //Text(populars[index].country),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
