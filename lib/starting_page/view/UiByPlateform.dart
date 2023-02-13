import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/starting_page/view/StartingPageMobile.dart';
import 'package:flutter_app/starting_page/view/StartingPagePC.dart';

Widget UiByPlateform() {
  if (kIsWeb) {
    return StartingPagePC();
  }
  return StartingPageMobile();
}