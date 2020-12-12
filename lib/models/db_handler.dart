// import 'dart:math';

import 'package:a2wan/models/category.dart';
import 'package:a2wan/models/userenter.dart';
import 'package:dio/dio.dart';

// import 'package:dio/dio.dart';
class ApiHandler {
  static ApiHandler _instance = ApiHandler._private();
  ApiHandler._private();

  static ApiHandler get instance => _instance;
  String mainUrl = 'https://3on.etolv.net';
  Dio _dio = Dio();

  Future<List<Category>> getAllCategory() async {
    String url = '$mainUrl/categories/get';
    // Map<String, dynamic> params = {
    //   'api_key': ApiKeys.tmbdkey,
    // };
    Response response = await _dio.get(url);
    List<Category> categories = (response.data as List).map((cat) {
      return Category.fromJson(cat);
    }).toList();
    print(categories);
    return categories;
    // print(response.data['results']);
  }

  Future<List<Category>> getCategoryByDet(int categId) async {
    String url = '$mainUrl/categories/get/';
    Map<String, dynamic> params = {
      // 'api_key': ApiKeys.tmdbKey,
      'category_id':categId,
    };

    // return Category.fromJson();
    Response response = await _dio.get(url, queryParameters: params);
    List<Category> catdetails = (response.data as List).map((l) {
      return Category.fromJson(l);
    }).toList();
    print('ggggggggggg');
    print(catdetails);
    return catdetails;
  }

  // post

  Future<UserEnter> formInformation(
      int id, String name, String mobile, String city, String notes) async {
    String url = '$mainUrl/requests/add';
    // Map<String, dynamic> params = {
    //   // 'api_key': ApiKeys.tmdbKey,
    //   'category_id': categId,
    //   // 'name':name,
    //   // 'key':value,
    // };

    // return Category.fromJson();
    Response response = await _dio.post(
      url,
      data: {
        'id': id,
        'name': name,
        'mobile': mobile,
        'city': city,
        'notes': notes
      },
    );
    print('postsucce');
    return UserEnter.fromJson(response.data);

    // print(catdetails);
    // return ;
  }
}
