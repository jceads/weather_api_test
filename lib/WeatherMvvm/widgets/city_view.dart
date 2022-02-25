import 'package:flutter/material.dart';

import 'city_viewmodel.dart';

class CityView extends CityViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // appBar: AppBar(title: Text(weathers.first.dataSource ?? "Null aPbbar")),
      body: ListviewMethod(),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchAllData,
        child: Icon(Icons.download),
      ),
    );
  }

  ListView ListviewMethod() {
    return ListView.builder(
        itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(weathers[index].region ?? "region"),
              ),
            ),
        itemCount: weathers.length);
  }
}
