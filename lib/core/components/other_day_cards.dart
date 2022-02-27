import 'package:flutter/material.dart';

import '../AppConstant/app_color.dart';

class OtherDay extends StatelessWidget {
  const OtherDay(
      {Key? key,
      required this.day,
      required this.iconUrl,
      required this.temp,
      required this.comment})
      : super(key: key);
  final String day;
  final String iconUrl;
  final String temp;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text("${day}"),
            Image.network(iconUrl),
            Text(
              "${temp}\u2103",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: ColorConstant.primaryTextColor),
            ),
            Text(comment)
          ],
        ),
      ),
    );
  }
}
