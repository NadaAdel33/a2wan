// import 'package:delivery_manager/models/order.dart';
// import 'package:a2wan/helpers/dummy_data.dart';
// import 'package:a2wan/models/db_handler.dart';
// import 'package:a2wan/models/category.dart';
import 'package:a2wan/providers/category_provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';

class CategoryItem extends StatefulWidget {
  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
//  final  int cat_id;

//  Category(this.cat_id);

  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).accentColor == Colors.grey[800];
    return SingleChildScrollView(
      child: Column(
          // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
          children: [
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Theme.of(context).accentColor,
                      // Theme.of(context).accentColor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // margin: EdgeInsets.symmetric(
                      //   horizontal: MediaQuery.of(context).size.width * 0.06,
                      // ),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ListTile(
                            title: SizedBox(
                          // width: 250.0,
                          child: TyperAnimatedTextKit(
                            text: [
                              context
                                  .read<CategoryProvider>()
                                  .allCategory[index]
                                  .name,

                              //   style: TextStyle(color: Colors.amber, fontSize: 25),
                            ],
                            onTap: () {},
                          ),
                        )
                            // child: Text(
                            // order.deliveryMan,

                            // ),
                            ),
                        // subtitle: Text(
                        //   DateFormat('hh:mm a').format(order.orderDate),
                        //   style: TextStyle(color: isDark ? Colors.white : Colors.black),
                        // ),
                        // trailing: IconButton(
                        //   icon: Icon(
                        //     Icons.skip_next,
                        //     color: Colors.red,
                        //   ),
                        //   onPressed: () {
                        //     // remove(DateFormat('yyyyMMdd').format(order.orderDate), order);
                        //   },
                        // ),
                      ),
                    );
                  });
            }),
          ]),
    );
  }
}
