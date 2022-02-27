import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_api_test/core/AppConstant/app_color.dart';
import 'package:weather_api_test/core/components/bottom_custom_button.dart';
import 'package:weather_api_test/core/components/grid_item.dart';

import '../../core/components/other_day_cards.dart';
import '../../core/components/upper_button.dart';
import 'city_viewmodel.dart';

class CityView extends CityViewModel {
  final double widthAndHeight = 300;
  bool _isloading = true;
  Future<void> changeLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    _isloading = !_isloading;
  }

  // var deepBlue = Color(0xff142e5a);
  @override
  void initState() {
    changeLoading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _isloading == true ? ProgressBar() : new_ui(context),
      ),
    );
  }

  Widget new_ui(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          UpperButtons(),
          Image.network(basemodel?.currentConditions?.iconURL ?? "null icon"),
          TempText(context),
          RegionText(context),
          CommentText(context),
          DaySpecificInfoText(),
          OtherDayList(context),
          BottomButtons()
        ],
      ),
    );
  }

  Container BottomButtons() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
                icon: Icon(Icons.home_outlined),
                onPress: () {},
                paddingValue: 0),
            CustomButton(
              icon: Icon(Icons.sunny),
              onPress: () {},
              paddingValue: 0,
              isSelected: true,
            ),
            CustomButton(
                icon: Icon(Icons.settings), onPress: () {}, paddingValue: 0)
          ],
        ),
      ),
    );
  }

  Container OtherDayList(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      // padding: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return OtherDay(
            day: basemodel?.nextDays?[index].day ?? "null day",
            iconUrl: basemodel?.nextDays?[index].iconURL ?? "null icon",
            temp: basemodel?.nextDays?[index].maxTemp?.c.toString() ??
                "null temp",
            comment: basemodel?.nextDays?[index].comment ?? "null comment",
          );
        },
        itemCount: basemodel?.nextDays?.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Column DaySpecificInfoText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GridItem(
                label: "Humidity",
                subTitle: "${basemodel?.currentConditions?.humidity}"),
            GridItem(
                label: "Precip",
                subTitle: "${basemodel?.currentConditions?.precip}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GridItem(
                label: "Wind",
                subTitle: "${basemodel?.currentConditions?.wind?.km}km/h"),
            GridItem(
                label: "Precip",
                subTitle: "${basemodel?.currentConditions?.precip}")
          ],
        ),
      ],
    );
  }

  Text CommentText(BuildContext context) {
    return Text("${basemodel?.currentConditions?.comment}",
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: ColorConstant.primaryTextColor));
  }

  Text RegionText(BuildContext context) {
    return Text("${basemodel?.region}",
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: ColorConstant.primaryTextColor));
  }

  Text TempText(BuildContext context) {
    return Text("${basemodel?.currentConditions?.temp?.c} \u2103 ",
        style: Theme.of(context)
            .textTheme
            .displayMedium
            ?.copyWith(color: ColorConstant.primaryTextColor));
  }

  Row UpperButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customIconButton(
            radius: 10, icon: const Icon(Icons.more_horiz), onPressed: () {}),
        customIconButton(
            radius: 10, icon: const Icon(Icons.notifications), onPressed: () {})
      ],
    );
  }

  Center ProgressBar() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
