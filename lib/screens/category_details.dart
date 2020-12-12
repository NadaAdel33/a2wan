// import 'package:a2wan/models/category.dart';
// import 'package:a2wan/providers/category_provider.dart';
import 'package:a2wan/widgets/categ_form.dart';
// import 'package:a2wan/widgets/category_Item.dart';
// import 'package:a2wan/widgets/categ_form.dart';
// import 'package:a2wan/widgets/image_list.dart';
// import 'package:a2wan/widgets/image_gallery.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:provider/provider.dart';

class CategoryDetails extends StatefulWidget {

  @override
  // Category category;
  _CategoryDetailsState createState() => _CategoryDetailsState();
  int categId;
  CategoryDetails(this.categId);
}

class _CategoryDetailsState extends State<CategoryDetails> {
  
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
          Container(
            child: Image.asset(
              'assets/images/Back.jpg',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width
            ),
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height),
          ),
          Container(
         
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        'تفاصيل القسم',
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  CategoryForm()
                ],
              ),
            ),
          )
        ])));
  }
}
