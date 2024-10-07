
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(),
            );
        }
      ),
    );
    }
  }
