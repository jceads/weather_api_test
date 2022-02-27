import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.label, required this.subTitle})
      : super(key: key);
  final String label;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 3,
              height: 60,
              color: Colors.amber,
            ),
            Column(
              children: [
                Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    width: 100,
                    child: Text(label)),
                Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    width: 100,
                    child: Text(
                      subTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ],
        ));
  }
}
