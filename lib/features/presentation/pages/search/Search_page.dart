import 'package:flutter/material.dart';
import 'package:insta_clone_clean_arch/features/presentation/widgets/form_container_widget.dart';

import '../../../../consts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: customAppBarSearchWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 5.0,
          ),
          child: SingleChildScrollView(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (_, index) {
                return customGridItem();
              },
              itemCount: 32,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
            ),
          ),
        ),
      ),
    );
  }

  Widget customGridItem() => Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: secondaryColor,
        ),
      );
  PreferredSizeWidget customAppBarSearchWidget({
    VoidCallback? onTapSearchIcon,
  }) =>
      AppBar(
        backgroundColor: bgColor,
        clipBehavior: Clip.none,
        elevation: 0,
        title: FormContainerWidget(
          hintText: 'Search',
          borderRadiusValue: 20,
          prefixIcon: IconButton(
            onPressed: onTapSearchIcon,
            icon: const Icon(
              Icons.search,
              color: primaryColor,
            ),
            splashRadius: 23,
          ),
        ),
      );
}
