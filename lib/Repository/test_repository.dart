import 'package:flutter/material.dart';
import 'package:neodocs_assignment_flutter/Models/test_data_info_model.dart';

import '../Models/test_metadata_model.dart';

class TestRepository {
  static TestMetaData getTestMetaData() {
    return TestMetaData([
      TestdataInfo(
          lowerBound: 0,
          upperBound: 30,
          color: Colors.red,
          meaning: "Dangerous"),
      TestdataInfo(
          lowerBound: 30,
          upperBound: 40,
          color: Colors.orange,
          meaning: "Moderate"),
      TestdataInfo(
          lowerBound: 40,
          upperBound: 60,
          color: Colors.green,
          meaning: "Ideal"),
      TestdataInfo(
          lowerBound: 60,
          upperBound: 70,
          color: Colors.orange,
          meaning: "Moderate"),
      TestdataInfo(
          lowerBound: 70,
          upperBound: 120,
          color: Colors.red,
          meaning: "Dangerous"),
    ]);
  }
}