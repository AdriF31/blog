import 'package:blog/ui/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (c) => const Scaffold(
        body: Center(
          child: Text('ini splashscreen'),
        ),
      ),
    );
  }
}
