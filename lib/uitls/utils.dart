import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  void showSnackBar(String title, String message) {
    Get.showSnackbar(GetSnackBar(
      title: title,
      message: message,
    ));
  }

  void showToast(String message) {
    Fluttertoast.showToast(msg: message);
  }
}
