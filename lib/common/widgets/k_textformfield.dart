import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/app_routers/app_routers.dart';
import 'package:flutter_assignment/core/injection/injection.dart';
import 'package:flutter_assignment/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter_assignment/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KtextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool enable;
  final HomeCubit homeCubit;
  final Icon? suffixIcon;
  final bool? autoFocus;
  const KtextFormField({
    super.key,
    this.controller,
    this.suffixIcon,
    this.autoFocus,
    required this.enable,
    required this.homeCubit,
  });

  @override
  Widget build(BuildContext context) {
    final textFieldBorderRadius = BorderRadius.circular(8.r);
    return TextFormField(
      autofocus: autoFocus ?? false,
      enabled: enable,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () => locator<AppRouters>().popForced(),
              child: suffixIcon),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: textFieldBorderRadius),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: textFieldBorderRadius),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: disabledColor),
              borderRadius: textFieldBorderRadius),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          border: InputBorder.none,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
          hintText: "Search for images"),
    );
  }
}
