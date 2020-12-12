// import 'package:a2wan/models/db_handler.dart';
import 'package:a2wan/models/db_handler.dart';
// import 'package:a2wan/models/userenter.dart';
import 'package:flutter/material.dart';

class FormProvider with ChangeNotifier {
  Future<String> fetchFromInformatio(
      int cat_id, String name, String mobile, String city, String notes) async {
    try {
      await ApiHandler.instance.formInformation(cat_id, name, mobile , city, notes);
      print('postsuccceeeeed');
      // saveUserData();
      return null;
    } catch (error) {
      return ('error.response.data');
    }
  }
}
