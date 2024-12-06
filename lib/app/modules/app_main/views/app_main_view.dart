import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_main_controller.dart';

class AppMainView extends GetView<AppMainController> {
  const AppMainView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppMainView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AppMainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
