// import 'package:a2wan/widgets/category_item.dart';
// import 'package:a2wan/widgets/category_item.dart';
// import 'package:a2wan/widgets/category_Item.dart';
// import 'package:a2wan/screens/category_details.dart';
import 'package:a2wan/screens/category_details.dart';
// import 'package:a2wan/widgets/categ_form.dart';
import 'package:a2wan/widgets/category_item.dart';
import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:a2wan/widgets/category_item.dart';
class CategoryScreen extends StatelessWidget {
  //   int cat_id;
  // // Category(this.cat_id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor:Colors.black45,
      //   toolbarHeight: 26,
        
      // //     // leading: Text('hh'),
      // //     // centerTitle: true,
      //     title: Text(
      //   'الأقسام',
      //   style: TextStyle(
      //     fontSize: 20,
      //   ),
      // )
      //     // actions: [
      //     //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
      //     // ],
      //     // ),
          // ),
    
      body: SingleChildScrollView(
              child: SafeArea(
                child: Stack(children: [
            Container(
              child: Image.asset('assets/images/Back.jpg',
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width
                  ),
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
                      child: Column(
                
                children: [
                  Container(
                    margin:EdgeInsets.only(bottom: 30),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      margin: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.05)
                          .add(EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.06)),
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                                  ' طباعة   البريد فلاير على سبيل المثال او نماذج مواقع',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold)))),
                    ),
                  ),
                  // CategoryItem()
                  InkWell(
                    child: CategoryItem(),
                    onTap: () {
                      // print('hhhshhshshhs');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        int categId;
                                                return CategoryDetails(categId);
                      }));
                    },
                  ),
                  // CategoryItem(),
                  // CategoryItem(),
                  //  CategoryItem(),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
