import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gaming_app/repository/api/transilation_screen/service/transilation_screen_service.dart';

class TransilationController extends ChangeNotifier {
  Future onTransilation(String text) async {
    var data = {
      "text": text,
    };
    TransilationService.postTransilationData(data).then((value) {
      log("TransilationController -> status -> ${value["status"]}");
      if (value["status"] == 1) {
        log("${value["data"]}");
      }
    });
  }
}
