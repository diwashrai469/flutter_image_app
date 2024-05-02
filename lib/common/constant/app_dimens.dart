import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimens {
  //screenutils
  static const appHeight = 932.0;
  static const appWidth = 430.0;

//circle avatar radius
  static const sssCircleAvatarRadius = 12.0;
  static const ssCircleAvatarRadius = 15.0;
  static const sCircleAvatarRadius = 17.0;
  static const mCircleAvatarRadius = 20.0;
  static const lCircleAvatarRadius = 25.0;
  static const elCircleAvatarRadius = 30.0;
  static const boarderAvatarCircleRaduis = 26.0;

  static final pagePadding = const EdgeInsets.all(20).h;
  static final pagePaddingX = EdgeInsets.symmetric(horizontal: 20.w);
  static final pagePaddingY = const EdgeInsets.symmetric(vertical: 20).h;
  static final pagePaddingLarge = const EdgeInsets.all(32).h;

  static const double cardPaddingSize = 20;
  static const cardPadding = EdgeInsets.all(cardPaddingSize);
  static const inputBorderRadius = BorderRadius.all(Radius.circular(0));
  static final inputPadding =
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  static final chipPadding =
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h);
  static final buttonFontSizeXSmall = 14.0.h;
  static final buttonFontSizeSmall = 15.0.h;
  static final buttonFontSizeMedium = 16.0.h;
  static final buttonFontSizeLarge = 17.0.h;

  static final iconButtonSizeSmall = 24.0.h;
  static final iconButtonSizeLarge = 32.0.h;

//boarder radius
  static final sboarderRadisCircular = 8.0.r;

  static final buttonPaddingXSmall =
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
  static final buttonPaddingSmall =
      EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h);
  static final buttonPaddingMedium =
      EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h);
  static final buttonPaddingLarge =
      EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h);

  static final double titleFontSize = 16.sp;

  //text fontweight
  static const FontWeight sfontweight = FontWeight.w300;
  static const FontWeight mfontweight = FontWeight.w500;
  static const FontWeight lfontweight = FontWeight.w700;

//text fontsize
  static final double headlineFontSizeXXXSmall = 10.sp;
  static final double headlineFontSizeXXSmall = 12.sp;
  static final double headlineFontSizeXSmall = 14.sp;
  static final double headlineFontSizeSSmall = 16.sp;
  static final double headlineFontSizeSmall1 = 18.sp;
  static final double headlineFontSizeSmall = 20.sp;
  static final double headlineFontSizeOther = 22.sp;
  static final double headlineFontSizeMedium = 28.sp;
  static final double headlineFontSizeLarge = 32.sp;
}
