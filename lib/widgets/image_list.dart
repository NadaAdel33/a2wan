import 'package:a2wan/helpers/dummy_data.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // if()
      body: Container(
          // height: MediaQuery.of(context).size.height * 0.04,
          // width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemExtent: 200,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                DummyData.nowPlaying[index]['poster_url']),
                            fit: BoxFit.cover),
                      ),
                    ),
                    // Text(
                    //   DummyData.nowPlaying[index]['movie_name'],
                    //   style: TextStyle(color: Colors.amber, fontSize: 25),
                    // )
                  ],
                );
              })),
    );
  }
}
