import 'package:flutter/material.dart';

class TestdataInfo {
  final int lowerBound;
  final int upperBound;
  final Color color;
  final String meaning;

  TestdataInfo(
      {required this.lowerBound,
      required this.upperBound,
      required this.color,
      required this.meaning});

  int getRangeLength() {
    return upperBound - lowerBound;
  }
}
