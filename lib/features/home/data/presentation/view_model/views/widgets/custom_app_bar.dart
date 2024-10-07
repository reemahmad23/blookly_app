
import 'package:bookly_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Image.network(AssetsData.logo,
          height: 40,),
          Spacer(),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.search,
          size: 30,),
          ),
        ],
      ),
    );
  }
}