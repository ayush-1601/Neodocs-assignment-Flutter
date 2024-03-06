import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:neodocs_assignment_flutter/Controller/bar_controller.dart';
import 'package:neodocs_assignment_flutter/Widgets/bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(BarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("NeoDocs Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              child: BarWidget(),
              height: MediaQuery.of(context).size.height / 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Form(
                    key: controller.formKey,
                    child: TextFormField(
                      onChanged: (value) {
                        controller.textvalue.value = int.tryParse(value) ?? 0;
                      },
                      controller: controller.textEditingController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Enter value",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      controller.submitValue();
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
