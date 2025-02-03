import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/theme/app_colors.dart';

class NavigationMobScreen extends ConsumerWidget {
  const NavigationMobScreen({
    super.key,
    required this.selectedIndex,
    required this.tabsRouter,
    required this.child,
  });

  final int selectedIndex;
  final TabsRouter tabsRouter;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
    );
  }
}

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
          child: BottomNavigationBar(
            elevation: 20,
            backgroundColor: AppColors.white,
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                    color: AppColors.primary, AssetImage(AssetIcons.homeIcon)),
                icon: ImageIcon(AssetImage(AssetIcons.homeIcon)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: ImageIcon(
                      color: AppColors.primary,
                      AssetImage(AssetIcons.movieIcon)),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: ImageIcon(AssetImage(AssetIcons.movieIcon)),
                ),
                label: 'Movies',
              ),
              // const BottomNavigationBarItem(
              //   activeIcon: Icon(
              //     Icons.add,
              //     color: AppColors.transparent,
              //   ),
              //   icon: Icon(Icons.add),
              //   label: '',
              // ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ImageIcon(
                      color: AppColors.primary,
                      AssetImage(AssetIcons.tvShowIcon)),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ImageIcon(AssetImage(AssetIcons.tvShowIcon)),
                ),
                label: 'TV Shows',
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                    color: AppColors.primary, AssetImage(AssetIcons.aiIcon)),
                icon: ImageIcon(AssetImage(AssetIcons.aiIcon)),
                label: 'AI Chat',
              ),
            ],
            onTap: onItemSelected,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            // selectedItemColor: AppColors.primeryColor,
            // unselectedItemColor: AppColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
