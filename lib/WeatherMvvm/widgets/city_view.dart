import 'package:flutter/material.dart';

import 'city_viewmodel.dart';

class CityView extends CityViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(weather?.region ?? "null region data"),
      ),
      body: Column(
        children: [
          Text(weather?.currentConditions?.temp?.c.toString() ??
              "null temperature value"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchAllData,
        child: const Icon(Icons.download),
      ),
    );
  }

  ListView ListviewMethod() {
    return ListView.builder(
        itemBuilder: (context, index) => const Card(
              child: ListTile(
                title: Text(" listtile"),
              ),
            ),
        itemCount: 10);
  }
}
