import 'package:bookly_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.network(AssetsData.logo)),
        SizedBox(
          height: 10,
        ),
        Text('Reed Free Books'),
      ],
    );
  }
}