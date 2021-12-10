import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final notImplementedSnackbar = Get.snackbar(
  "Not implemented yet",
  "Please wait for the feature :)",
  icon: Icon(Icons.person, color: Colors.white),
  snackPosition: SnackPosition.BOTTOM,
);