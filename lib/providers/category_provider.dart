import 'package:a2wan/models/db_handler.dart';
import 'package:a2wan/models/category.dart';
import 'package:flutter/cupertino.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> allCategory;
  List<Category> categoryByDetails;
  Future<bool> fetchCategory() async {
    try {
    allCategory = await ApiHandler.instance.getAllCategory();
      print('truerr');
      return true;
    } catch (error) {
      print('false');
      return false;
    }
  }


  // 
  Future<bool> fetchCategoryWithDet(int categId) async {
    try {
categoryByDetails = await ApiHandler.instance.getCategoryByDet(categId);
      print('truerrdet');
            print(categoryByDetails);
      return true;
    } catch (error) {
      print('false');
      return false;
    }
  }
}
