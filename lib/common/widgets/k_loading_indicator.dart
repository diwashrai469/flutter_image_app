import 'package:flutter/material.dart';

Widget kLoadingIndicator(
    {required BuildContext context, Color? background, double? strockWidth}) {
  return CircularProgressIndicator.adaptive(
    backgroundColor: background,
    strokeWidth: strockWidth ?? 3,
  );
}
