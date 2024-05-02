// import 'dart:async';

// import 'package:chibihr/common/constant/ui_helpers.dart';
// import 'package:chibihr/modules/data/base_model/base_model.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class InternetConnectivityServices extends BaseModel {
//   @override
//   void onInit() {
//     checekInternetConnectivity();
//     getConfigTimePeriodic();
//     super.onInit();
//   }

//   void getConfigTimePeriodic() {
//     Timer.periodic(
//       const Duration(seconds: 5),
//       (timer) async {
//         checekInternetConnectivity();
//       },
//     );
//   }

//   void checekInternetConnectivity() async {
//     final connectivityResult = await Connectivity().checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       if (connectivityResult == ConnectivityResult.none) {
//         ScaffoldMessenger.of(Get.context!).showSnackBar(
//           SnackBar(
//             content: Row(
//               children: [
//                 const Icon(
//                   CupertinoIcons.wifi_slash,
//                   color: Colors.white,
//                 ),
//                 mWidthSpan,
//                 const Text('No internet connection !'),
//               ],
//             ),
//           ),
//         );
//       } else {
//         Get.back();
//       }
//     }
//   }
// }
