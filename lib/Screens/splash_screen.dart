import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   _navigateToHome();
  // }
  //
  // _navigateToHome() async {
  //   await Future.delayed(Duration(seconds: 3), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => IntroScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200), color: Colors.grey),
              child: const Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
