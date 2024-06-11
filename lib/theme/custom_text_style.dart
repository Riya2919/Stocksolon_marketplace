import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Barlow text style
  static get barlowWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 128.fSize,
        fontWeight: FontWeight.w300,
      ).barlow;
  // Body text style
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallInterWhiteA700 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelLargeff0091ff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF0091FF),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff2563eb => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF2563EB),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeffffffff => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray30090 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray30090,
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumRobotoBluegray400 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
      );
  static get labelMediumff3b82f6 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF3B82F6),
      );
  static get labelMediumff979797 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF979797),
      );
  // Title text style
  static get titleLargeBeVietnamProGray900 =>
      theme.textTheme.titleLarge!.beVietnamPro.copyWith(
        color: appTheme.gray900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeInter_1 => theme.textTheme.titleLarge!.inter;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRobotoGray900dd =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray900Dd,
      );
  static get titleMediumRobotoGreen900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.green900,
      );
  static get titleMediumRobotoWhiteA700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterOnSecondaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get beVietnamPro {
    return copyWith(
      fontFamily: 'Be Vietnam Pro',
    );
  }

  TextStyle get barlow {
    return copyWith(
      fontFamily: 'Barlow',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
