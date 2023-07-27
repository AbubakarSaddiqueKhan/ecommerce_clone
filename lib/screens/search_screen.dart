import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/copy_design.dart';
import 'package:flutter_hair_cleaner_firebase/design.dart';
import 'package:flutter_hair_cleaner_firebase/widgets/product_design.dart';
import 'package:flutter_hair_cleaner_firebase/widgets/text.dart';

class MySearchPageDesign extends StatefulWidget {
  const MySearchPageDesign({super.key});

  @override
  State<MySearchPageDesign> createState() => _MySearchPageDesignState();
}

class _MySearchPageDesignState extends State<MySearchPageDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_outlined),
          title: Text(MyText.searchProducts,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: kToolbarHeight * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/images/abubakar.jpg"))),
              ),
            )
          ],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return CopyDesign(
              index: index,
            );
          },
        ));
  }
}
