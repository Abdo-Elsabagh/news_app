import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/screen/home_screen.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeView(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/splash.json',
          ),
          const Text(
            'News App',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Stay Informed, Anytime, Anywhere',
              style: TextStyle(fontSize: 22, color: Colors.black))
        ],
      ),
    );
  }
}
