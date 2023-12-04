import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrencyTypeController extends GetxController {
  RxString type = 'USD'.obs;
  RxString toType = 'USD'.obs;
  RxString result = '00'.obs;
  Rx<TextEditingController> textfield = TextEditingController().obs;
}
