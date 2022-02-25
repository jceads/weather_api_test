import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'city_viewmodel.dart';

class CityView extends CityViewModel {
  // var _textStyle = TextStyle(color: Colors.black);
  bool _isloading = true;
  Future<void> changeLoading() async {
    await Future.delayed(const Duration(seconds: 2));
    _isloading = !_isloading;
  }

  @override
  void initState() {
    changeLoading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff4cafd0),
        appBar: appbar(),
        body: _isloading == true
            ? const Center(
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Weather_View(context));
  }

  Column Weather_View(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            timeText(context),
            regionText(context),
            IconMethod(),
            DegreeText(context),
            Text(
              weather?.currentConditions?.comment ?? "null comment value",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.w300),
            )
          ],
        ),
        DayofTheWeekText(context)
      ],
    );
  }

  Container IconMethod() {
    return Container(
      child: weather?.currentConditions?.iconUrl == null
          ? null
          : Image.asset(weather?.currentConditions?.iconUrl ?? ""),
    );
  }

  Widget DayofTheWeekText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        DateFormat('EEEE').format(DateTime.now()),
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }

  Container DegreeText(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          weather?.currentConditions?.temp?.c?.toString() ??
              "null temperature Value",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }

  Container regionText(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Text(
        weather?.region ?? "Null region data",
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.white),
      ),
    );
  }

  Text timeText(BuildContext context) {
    return Text(
      "${DateTime.now().hour} :${DateTime.now().minute} ",
      style: Theme.of(context)
          .textTheme
          .displayMedium
          ?.copyWith(color: Colors.white),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: Text(
        _isloading == true
            ? "Loading..."
            : weather?.region?.toString() ?? "null region data",
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
