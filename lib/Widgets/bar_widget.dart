import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/bar_controller.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BarController());

    List<Widget> sectionWidgets = [];
    List<Widget> labelWidgets = [];

    for (var sections in controller.testRangeList) {
      sectionWidgets.add(Expanded(
          flex: ((sections.upperBound - sections.lowerBound) * 10).toInt(),
          child: Container(
            color: sections.color,
          )));
    }

    for (var labels in controller.testRangeList) {
      labelWidgets.add(Expanded(
          flex: ((labels.upperBound - labels.lowerBound) * 10).toInt(),
          child: Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: Text(
              labels.upperBound.toString(),
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 12),
            ),
          )));
    }

    return Stack(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 30,
                child: Row(
                  children: sectionWidgets,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  0.toString(),
                  style: TextStyle(fontSize: 12),
                ),
                ...labelWidgets
              ],
            )
          ],
        ),
        Obx(
          () => Positioned(
            left: controller.textvalue.value * 3 - 15,
            top: 30,
            child: Column(
              children: [
                Icon(
                  Icons.arrow_drop_up_sharp,
                  size: 50,
                ),
                Text(controller.textvalue.toInt().toString())
              ],
            ),
          ),
        )
      ],
    );
  }
}
