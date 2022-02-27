import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'city_viewmodel.dart';

class CityView extends CityViewModel {
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
      body: _isloading == true ? ProgressBar() : weather_data(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchAllData(ServicePath.ANTALYA.rawValue);
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  Center ProgressBar() {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }

  Widget weather_data(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: TextTime(context)),
        Expanded(flex: 1, child: TextTempe(context)),
        Expanded(flex: 1, child: TextComment(context)),
        Expanded(flex: 1, child: TextDay(context)),
        Expanded(flex: 1, child: NextDayBuilder())
      ],
    );
  }

  ListView NextDayBuilder() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Card(child: NextDayWidgets(index)),
      itemCount: basemodel?.nextDays?.length,
    );
  }

  Container NextDayWidgets(int index) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xff4cafd0)),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(basemodel?.nextDays![index].day ?? " "),
          const Divider(),
          Text("Max temp: ${basemodel?.nextDays![index].maxTemp?.c}"),
          Text("Min temp: ${basemodel?.nextDays![index].minTemp?.c}"),
          Text("${basemodel?.nextDays![index].comment}")
        ],
      ),
    );
  }

  Text TextDay(BuildContext context) {
    return Text(DateFormat('EEEE').format(DateTime.now()),
        style: Theme.of(context).textTheme.displaySmall);
  }

  Text TextComment(BuildContext context) {
    return Text(basemodel?.currentConditions?.comment ?? "null comment data",
        style: Theme.of(context).textTheme.headline4);
  }

  Text TextTempe(BuildContext context) {
    return Text("${basemodel?.currentConditions?.temp?.c}\u2103",
        style: Theme.of(context).textTheme.displayLarge);
  }

  Text TextTime(BuildContext context) {
    return Text("${DateTime.now().hour} :${DateTime.now().minute} ",
        style: Theme.of(context).textTheme.displayMedium);
  }

  AppBar appbar() {
    return AppBar(
      title: Text(
        _isloading == true
            ? "Loading..."
            : basemodel?.region?.toString() ?? "null region data",
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
