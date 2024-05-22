import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/*
Need first 

flutter pub add get
flutter pub add get_storage

*/

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _MyAppState();
}

class _MyAppState extends State<SplashPage> {
  GetStorage storage = GetStorage();
  bool shouldSkipOnboarding = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed('login');
    });
  }

  Future<void> _checkSkipOnboarding() async {
    await Future.delayed(Duration.zero);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Image.asset(
              'assets/img/splash_image.png',
              width: 400,
            ),
          ),
          //Lottie.asset('assets/lottie/1.json')
        ],
      ),
    );
  }
}
