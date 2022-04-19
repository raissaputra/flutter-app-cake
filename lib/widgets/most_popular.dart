import 'package:flutter/material.dart';
import 'package:flutter_blog_cake/detial.dart';
import 'package:flutter_blog_cake/model/cake.dart';

class MostPopular extends StatelessWidget {
  final _list = Cake.generateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var cake = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(cake: cake);
              }));
            },
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:
                        Image.asset(cake.url, width: 140, fit: BoxFit.cover)),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: Text(cake.location,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15))),
                      Material(
                          color: Colors.transparent,
                          child: Text(cake.name,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)))
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 15),
        itemCount: _list.length);
  }
}
