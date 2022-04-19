import 'package:flutter/material.dart';
import 'package:flutter_blog_cake/widgets/most_popular.dart';

import 'widgets/cake_blog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Blog Jajanan',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Expanded(flex: 2, child: CakeBlog()),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Paling Populer',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      ),
    );
  }
}
