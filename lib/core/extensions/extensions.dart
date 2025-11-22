import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

extension StringExtension on String {
  void showToast({required ToastificationType type}) {
    toastification.show(
      title: Text(this),
      type: type,
      style: ToastificationStyle.fillColored,
      showProgressBar: false,
      borderSide: BorderSide.none,
      alignment: Alignment.topCenter,
      dismissDirection: DismissDirection.up,
      primaryColor: Colors.green,
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
}

extension RadiusExtension on num {
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());
}
