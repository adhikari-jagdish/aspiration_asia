import 'package:aspirationasia/model/popular_destinations_model.dart';
import 'package:aspirationasia/utils/integers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: populars.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Integers.SIZE_EIGHT),
            ),
            child: Container(
              height: Integers.SIZE_ONEFOURTY,
              width: Integers.SIZE_ONETWENTY,
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
                          image: NetworkImage(populars[index].image),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Integers.SIZE_EIGHT,
                    ),
                    Text(
                      populars[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(populars[index].country),
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
