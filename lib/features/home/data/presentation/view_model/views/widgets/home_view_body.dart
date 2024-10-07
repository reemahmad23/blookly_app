import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
      ],
    );
  }
}
