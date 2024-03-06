import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neodocs_assignment_flutter/Models/test_data_info_model.dart';
import 'package:neodocs_assignment_flutter/Repository/test_repository.dart';

class BarController extends GetxController {
  final RxInt textvalue = RxInt(0);
  final formKey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void submitValue() async {
    print(textvalue);
    textvalue.value = 0;
  }

  List<TestdataInfo> testRangeList =
      TestRepository.getTestMetaData().testRangeList.obs;
}
