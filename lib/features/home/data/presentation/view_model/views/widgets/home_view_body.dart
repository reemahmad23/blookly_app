import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const CustomAppBar(),
          ),
      
          FeaturedBooksListView(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
              ),
          ),
            SizedBox(
              height: 10,
            ),
        ],
      
    ),
  ),
    SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BestSellerListView(),
      ),
    )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: BestSellerListViewItem(),
        );
      },
    );
    }
}