import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gaming_app/core/utils/app_utils.dart';
import 'package:gaming_app/repository/api/transilation_screen/service/transilation_screen_service.dart';

class TransilationController extends ChangeNotifier {
  String translatedText = "";

  Future onTransilation(String text, BuildContext context) async {
    var data = {"text": text, "target_language": "en"};
    try {
      var value = await TransilationService.postTransilationData(data);
      log("TransilationController -> status -> ${value["status"]}");
      if (value["status"] == 1) {
        log("${value["translated_text"]}");
        translatedText = value["translated_text"];
        notifyListeners();
        AppUtils.oneTimeSnackBar("Text Posted Successfully", context: context);
      } else {
        AppUtils.oneTimeSnackBar("Failed", context: context);
      }
    } catch (e) {
      log("Error: $e");
      AppUtils.oneTimeSnackBar("Failed to load translation", context: context);
    }
  }
}
