// import 'package:a2wan/models/api_handler.dart';
// import 'package:a2wan/providers/category_provider.dart';
// import 'package:a2wan/screens/category_details.dart';
// import 'dart:js';

import 'package:a2wan/providers/category_provider.dart';
import 'package:a2wan/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
// import 'package:a2wan/widgets/logo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ApiHandler.instance.getAllCategory();
  Provider.of<CategoryProvider>(context).fetchCategory();
  //  context.read
  //   <CategoryProvider>().fetchCategory();
    return Scaffold(
        // appBar: AppBar(
        // leading: Text('hh'),
        // centerTitle: true,
        // title: Text('عونggg'),
        // actions: [
        //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
        // ],
        // ),
        body: Container(
      child: GestureDetector(
        child: Image.asset('assets/images/1HOME.jpg',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width
            ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategoryScreen();
          }));
        },
      ),
      // height: double.infinity,
      // width: double.infinity,
    ));
  }
}
