import 'package:aspirationasia/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sized_context/sized_context.dart';
import 'package:aspirationasia/view/trip_packages/widget/package_details_itinerary.dart';

class PackageDetailsTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PackageDetailsTabsState();
}

class _PackageDetailsTabsState extends State<PackageDetailsTabs> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          tabs: [
            Text(
              'Overview',
              style: TextStyle(fontSize: 30.ssp),
            ),
            Text(
              'Itinerary',
              style: TextStyle(fontSize: 30.ssp),
            ),
            Text(
              'Inclusions',
              style: TextStyle(fontSize: 30.ssp),
            ),
            Text(
              'Prices',
              style: TextStyle(fontSize: 30.ssp),
            ),
          ],
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2.0,
          isScrollable: true,
          controller: _tabController,
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: context.widthPx,
          height: context.heightPx / 2,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Text(
                Strings.OVERVIEW_SAMPLE,
                style: TextStyle(fontSize: 25.ssp),
              ),
              PackageDetailsItinerary(),
              Text("Inclusions"),
              Text("Prices"),
            ],
          ),
        )
      ],
    );
  }
}
