// import 'package:a2wan/providers/form_provider.dart';
// import 'package:a2wan/models/category.dart';
// import 'package:a2wan/models/category.dart';
// import 'package:a2wan/providers/category_provider.dart';
import 'package:a2wan/providers/form_provider.dart';
// import 'package:a2wan/screens/category_details.dart';
import 'package:email_validator/email_validator.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:a2wan/models/db_handler.dart';
import 'package:provider/provider.dart';

class CategoryForm extends StatefulWidget {
  @override
  _CategoryFormState createState() => _CategoryFormState();
  // int id;

}

class _CategoryFormState extends State<CategoryForm> {
  int id;
  String mobile;
  String name, email, city, notes;

  void doneInformation() async {
    await context
        .read<FormProvider>()
        .fetchFromInformatio(id, name, mobile, city, notes);
  }

  @override
  Widget build(BuildContext context) {
    // context.read<FormProvider>().fetchFromInformatio();
    // {
    return ListView.builder(
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // itemCount: 4,
        itemBuilder: (context, index) {
          
        return

          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SafeArea(
                  child: Container(
                    
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
                              Form(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'الاسم',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontSize: 20,
                                        ),
                                      ),
// mail
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          setState(() {
                                            email = value;
                                          });
                                          if (EmailValidator.validate(value)) {
                                            return null;
                                          }
                                          return 'البريد الالكتروني غير صحيح';
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white24,
                                          border: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          // errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: 'example@abc.com',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text(
                                        'Confirm Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontSize: 16,
                                        ),
                                      ),
                                      // name
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          setState(() {
                                            name = value;
                                          });
                                          // if (EmailValidator.validate(value)) {
                                          //   return null;
                                          // }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white24,
                                          border: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          // errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: 'اكتب اسمك الثلاثي هنا',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text(
                                        'Confirm Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontSize: 16,
                                        ),
                                      ),
                                      // mobile
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          setState(() {
                                            mobile = value;
                                          });
                                          // if (EmailValidator.validate(value)) {
                                          //   return null;
                                          // }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white24,
                                          border: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          // errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: 'اكتب رقم الجوال الخاص بك',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      // city

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text(
                                        'Confirm Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontSize: 16,
                                        ),
                                      ),

                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          setState(() {
                                            city = value;
                                          });
                                          // if (EmailValidator.validate(value)) {
                                          //   return null;
                                          // }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white24,
                                          border: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          // errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: 'اكتب اسم المدينة هنا',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      // notes
                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text(
                                        'Confirm Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Pacifico',
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextFormField(
                                        cursorColor: Colors.amber,
                                        style: TextStyle(color: Colors.white),
                                        validator: (value) {
                                          setState(() {
                                            notes = value;
                                          });
                                          // if (EmailValidator.validate(value)) {
                                          //   return null;
                                          // }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white24,
                                          border: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 3,
                                          )),
                                          // errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText:
                                              'يمكنك كتابة مضمون الفكرة هنا',
                                          hintStyle:
                                              TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ]),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 30,
                                ),
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: FlatButton(
                                  onPressed: () {
                                    doneInformation();
                                  },
                                  child: Text(
                                    'ارسال',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  ),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ],
                          )))));
        });
  }
}
