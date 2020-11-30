import 'package:aspirationasia/model/adventures_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Adventures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: adventures.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
            child: Column(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
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
