import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'city_viewmodel.dart';

class CityView extends CityViewModel {
  // var _textStyle = TextStyle(color: Colors.black);
  final double widthAndHeight = 300;
  final Color scaffoldColor = const Color(0xff4cafd0);
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
      backgroundColor: scaffoldColor,
      appBar: appbar(),
      body: _isloading == true
          ? const Center(
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Weather_View(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchAllData(ServicePath.ANTALYA.rawValue);
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  Column Weather_View(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            timeText(context),
            regionText(context),
            Text(weather?.nextDays?[0].day ?? "null nextday"),
            IconMethod(),
            DegreeText(context),
            CommentText(context),
          ],
        ),
        DayofTheWeekText(context),
      ],
    );
  }

  Widget CommentText(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        weather?.currentConditions?.comment ?? "null comment value",
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.w300),
      ),
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
      width: 150,
      height: 150,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 54, 126, 150),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Text(
            weather?.currentConditions?.temp?.c.toString() ?? "null",
            style: const TextStyle(
                fontSize: 70, fontWeight: FontWeight.w200, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          backgroundColor: scaffoldColor,
        ),
      ),
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 10),
      //   child: Text(
      //     weather?.currentConditions?.temp?.c?.toString() ??
      //         "null temperature Value",
      //     style: Theme.of(context).textTheme.displayLarge,
      //   ),
      // ),
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
