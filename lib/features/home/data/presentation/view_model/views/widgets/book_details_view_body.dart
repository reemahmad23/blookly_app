import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
              CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width *.30),
                child: CustomListViewItem(),
              ),
              const SizedBox(
                height: 43,
              ),
              Text('Zycola s Land',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: .7,
                child: Text('Amr Abdelhamied',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}

