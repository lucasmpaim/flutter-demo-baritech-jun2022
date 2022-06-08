
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/subaccount_card.dart';
import 'package:flutter_demo/mock/subaccounts.dart';
import 'package:flutter_demo/screens/grid_screen.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {

  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();

}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            'assets/99069-flutter-logo.json',
            repeat: false
          ),
        )
      ),
    );
  }

  Future _navigateToMainScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context)
        .pushReplacement(
        MaterialPageRoute(
            builder: (context) => const GridPage()
        )
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToMainScreen();
  }
}
