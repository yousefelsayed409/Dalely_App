import 'package:flutter/cupertino.dart';

import '../view/Home_View.dart';
import 'List_View_Item.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ListViewItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 6,
            );
          },
          itemCount: 10),
    );
  }
}