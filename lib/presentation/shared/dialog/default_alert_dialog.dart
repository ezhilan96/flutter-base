import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  required BuildContext context,
  required String message,
  String positiveButtonlabel = "Okay",
  VoidCallback? positiveButtonAction,
  String negativeButtonLabel = "Dismiss",
  VoidCallback? negativeButtonAction,
  bool isDismissible = true,
}) async {
  return showDialog(
    barrierDismissible: isDismissible,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      content: Text(message),
      actions: <Widget>[
        if (positiveButtonAction != null)
          TextButton(
            onPressed: positiveButtonAction,
            child: Text(positiveButtonlabel),
          ),
        TextButton(
          onPressed: negativeButtonAction ??
              () {
                if (isDismissible) {
                  Navigator.pop(context);
                }
              },
          child: Text(negativeButtonLabel),
        ),
      ],
    ),
  );
}
