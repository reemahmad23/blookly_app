import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
      
          FeaturedBooksListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.titleNedium,
            ),
        ],
      ),
    );
  }
}
