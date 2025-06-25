import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:reviewer_mobile/theme/app_colors.dart';

import '../../main.dart';
import '../../my_app.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  Widget _buildNavItem({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.black12,
        child: SizedBox(
          height: double.infinity,
          child: Center(
            child: Icon(
              icon,
              color: AppColors.darkText,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.secondary,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            _buildNavItem(
              icon: Icons.home,
              onTap: () => Routefly.push(routePaths.appHome),
            ),
            _buildNavItem(
              icon: Icons.search,
              onTap: () {
                //Routefly.push(routePaths.search);
              },
            ),
            const SizedBox(width: 40), // espaço para o FAB notch
            _buildNavItem(
              icon: Icons.notifications,
              onTap: () {
                //Routefly.push(routePaths.notifications);
              },
            ),
            _buildNavItem(
              icon: Icons.person,
              onTap: () => Routefly.push(routePaths.profile),
            ),
          ],
        ),
      ),
    );
  }
}
