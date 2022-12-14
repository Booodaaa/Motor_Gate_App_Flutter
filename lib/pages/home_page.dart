import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/Category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(

        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8 ,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
       // children:  Categories_data.map((categoryData) => ).toList()
      ),
    );
  }
}
