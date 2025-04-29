import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

import '../../main.dart';


class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.lightGray,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: AppColors.darkText,
              onPressed: () {
                Routefly.push(routePaths.appHome);
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: AppColors.darkText,
              onPressed: () {
                //Routefly.push(routePaths.search);
              },
            ),
            const SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.notifications),
              color: AppColors.darkText,
              onPressed: () {
                //Routefly.push(routePaths.notifications);
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              color: AppColors.darkText,
              onPressed: () {
                Routefly.push(routePaths.profile);
              },
            ),
          ],
        ),
      ),
    );
  }
}