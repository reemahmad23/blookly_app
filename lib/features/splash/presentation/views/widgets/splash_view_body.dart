import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration( seconds: 1),
    );

  slidingAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
  .animate(animationController);

animationController.forward();
  }

  void dispose() {
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.network(AssetsData.logo)),
        SizedBox(
          height: 2,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
