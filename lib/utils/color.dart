import 'package:flutter/material.dart';

AppColors colors(context) => Theme.of(context).extension<AppColors>()!;

class AppColors extends ThemeExtension<AppColors> {
  final Color? colorTabBarView;
  final Color? colorLabelTabBarView;

  AppColors({
    required this.colorTabBarView,
    this.colorLabelTabBarView,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? colorTabBarView,
    Color? colorLabelTabBarView,
  }) {
    return AppColors(
      colorTabBarView: colorTabBarView,
      colorLabelTabBarView: colorLabelTabBarView,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      colorTabBarView: Color.lerp(colorTabBarView, other.colorTabBarView, t),
      colorLabelTabBarView:
          Color.lerp(colorLabelTabBarView, other.colorLabelTabBarView, t),
    );
  }
}
