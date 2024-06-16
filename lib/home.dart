import 'package:ar_demo_app_two/ar_seam_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ArSeamView(),));
          }, child: const Text('AR SeamView'))
        ],
      ),
    );
  }
}
