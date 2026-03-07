import 'package:flutter/material.dart';
import 'package:hetro_anime/presentation/model/category.dart';
import 'package:hetro_anime/presentation/widgets/shared/list_category/category_widget.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key, required this.onChangeCatigory});
  final Function(int) onChangeCatigory;

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  int selectedIndex = 0;

  void onSelectedCategory(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.onChangeCatigory(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryWidget(
            categoryName: categories[index],
            isSelected: index == selectedIndex,
            onSelected: () {
              onSelectedCategory(index);
              widget.onChangeCatigory(index);
            },
          ),
        ),
      ),
    );
  }
}
