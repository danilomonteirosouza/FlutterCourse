import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        body: Container(
          color: const Color(0xff320995 ),
          padding: const EdgeInsets.all(60),
          child: Center(
            child: Lottie.asset('lib/assets/estudar.json'),
          ),
        ),
      );
    } else if(defaultTargetPlatform == TargetPlatform.iOS){
        return const Text('iOS');
    } else {
        return const Text('System not detected');
    }
  }
}
