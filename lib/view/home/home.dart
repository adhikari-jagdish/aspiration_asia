import 'package:aspirationasia/bloc/dashboard/dashboard_cubit.dart';
import 'package:aspirationasia/bloc/dashboard/dashboard_state.dart';
import 'package:aspirationasia/model/dashboard/dashboard_response.dart';
import 'package:aspirationasia/utils/integers.dart';
import 'package:aspirationasia/view/home/widgets/adventures.dart';
import 'package:aspirationasia/view/home/widgets/popular_destinations.dart';
import 'package:aspirationasia/view/home/widgets/promotion_carousel.dart';
import 'package:aspirationasia/view/home/widgets/services.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dashboardCubit = DashboardCubit();
  DashboardResponse dashboardResponse;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: true);
    return Scaffold(
      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, dashboardState) {
          if (dashboardState is FailureDashboardState) {
            BotToast.showText(text: dashboardState.errorMessage);
          } else if (dashboardState is SuccessDashboardState) {
            dashboardResponse = dashboardState.dashboardResponse;
            return _dashboardItems();
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _dashboardItems() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Integers.SIZE_TWENTY),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Jagdish 🙏 Good Afternoon!',
                style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
              ),
              SizedBox(
                height: Integers.SIZE_TEN,
              ),
              PromotionCards(
                carouselResponse: dashboardResponse.carouselResponse,
              ),
              SizedBox(
                height: Integers.SIZE_SIXTEEN,
              ),
              Text(
                'Our Services',
                style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
              ),
              SizedBox(
                height: Integers.SIZE_TEN,
              ),
              Services(
                serviceResponse: dashboardResponse.serviceResponse,
              ),
              SizedBox(
                height: Integers.SIZE_TWENTY,
              ),
              Text(
                'Popular Destinations',
                style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
              ),
              SizedBox(
                height: Integers.SIZE_TEN,
              ),
              PopularDestinations(),
              SizedBox(
                height: Integers.SIZE_TWENTY,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adventurous Mood?',
                    style: TextStyle(fontSize: Integers.SIZE_SIXTEEN),
                  ),
                  Text(
                    'More',
                    style: TextStyle(fontSize: Integers.SIZE_TWELVE),
                  ),
                ],
              ),
              SizedBox(
                height: Integers.SIZE_TWENTY,
              ),
              Adventures()
            ],
          ),
        ),
      ),
    );
  }
}
