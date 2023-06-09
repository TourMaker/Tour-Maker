import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../core/theme/style.dart';

class CustomDialog {
  Future<dynamic> showCustomDialog(
    String title,
    String contentText, {
    String cancelText = 'Cancel',
    String confirmText = 'Confirm',
    Function()? onCancel,
    Function()? onConfirm,
    bool barrierDismissible = true,
  }) {
    return Get.dialog(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Align(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DefaultTextStyle(
                        style: heading3.copyWith(),
                        child: Text(title),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DefaultTextStyle(
                        style: subheading2.copyWith(fontSize: 10.sp),
                        child: Text(contentText, textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  const SizedBox(height: 23),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      if (onCancel != null)
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: englishViolet),
                          onPressed: onConfirm,
                          child: Text(confirmText),
                        )
                      else
                        const SizedBox(),
                      if (onConfirm != null)
                        TextButton(
                          onPressed: onCancel,
                          style: TextButton.styleFrom(
                            foregroundColor: fontColor,
                          ),
                          child: Text(cancelText),
                        )
                      else
                        const SizedBox()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: barrierDismissible);
  }
}
