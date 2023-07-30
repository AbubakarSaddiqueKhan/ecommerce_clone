import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/screens/cart_detail_screen.dart';
import 'package:flutter_hair_cleaner_firebase/screens/product_detail_screen.dart';
import 'package:flutter_hair_cleaner_firebase/screens/tab_bar_view_design.dart';
import 'package:flutter_hair_cleaner_firebase/widgets/text.dart';

import '../model/product_model.dart';

// List<String> imageList = [
//   "assets/images/acnes.png",
//   "assets/images/boots.png",
//   "assets/images/cerave.png",
//   "assets/images/clarins.png",
//   "assets/images/glamour.png",
//   "assets/images/karaja.png",
//   "assets/images/pixi.png",
//   "assets/images/remove.png",
//   "assets/images/simple.png",
//   "assets/images/tonic.png"
// ];

// List<String> productsName = [
//   "Acnes",
//   "Boots",
//   "Cerave",
//   "Clarins",
//   "Glamours",
//   "Karaja",
//   "Pixi",
//   "Remove",
//   "Simple",
//   "Tonic"
// ];

class ProductsHomePageDesign extends StatefulWidget {
  const ProductsHomePageDesign({super.key});

  @override
  State<ProductsHomePageDesign> createState() => _ProductsHomePageDesignState();
}

class _ProductsHomePageDesignState extends State<ProductsHomePageDesign>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> firebaseCollection =
      FirebaseFirestore.instance
          .collection(ProductModel.faceWashCollection)
          .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Icon(
            Icons.menu_open_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Search bar is clicked");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return CartDetailScreenDesign();
                  },
                ));
              },
              icon: Icon(Icons.category_outlined))
        ],
        bottom: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          dividerColor: Colors.black,
          indicatorColor: Colors.black,
          onTap: (value) {
            // print(value);
            // switch (value) {
            //   case 0:
            //     print(value);
            //     var faceWashFirestore = FirebaseFirestore.instance
            //         .collection(ProductModel.faceWashCollection)
            //         .snapshots();

            //     firebaseCollection = faceWashFirestore;
            //     break;
            //   case 1:
            //     print(value);
            //     var hairProductsFirestore = FirebaseFirestore.instance
            //         .collection(ProductModel.faceWashCollection)
            //         .snapshots();

            //     firebaseCollection = hairProductsFirestore;
            //     break;

            //   default:
            //     var faceWashFirestore = FirebaseFirestore.instance
            //         .collection(ProductModel.faceWashCollection)
            //         .snapshots();

            //     firebaseCollection = faceWashFirestore;
            // }
          },
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              text: 'Face Wash',
            ),
            Tab(
              text: 'Hair Products',
            ),
            Tab(
              text: 'Fragrances',
            ),
            Tab(
              text: 'Shoes',
            ),
            Tab(
              text: 'Clothes',
            ),
            Tab(
              text: 'Home Appliance',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        TabBarViewDesign(
            firestoreCollection: FirebaseFirestore.instance
                .collection(ProductModel.faceWashCollection)
                .snapshots()),
        TabBarViewDesign(
          firestoreCollection: FirebaseFirestore.instance
              .collection(ProductModel.hairProductsCollection)
              .snapshots(),
        ),
        TabBarViewDesign(
            firestoreCollection: FirebaseFirestore.instance
                .collection(ProductModel.fragrancesCollection)
                .snapshots()),
        TabBarViewDesign(
            firestoreCollection: FirebaseFirestore.instance
                .collection(ProductModel.shoesCollection)
                .snapshots()),
        TabBarViewDesign(
            firestoreCollection: FirebaseFirestore.instance
                .collection(ProductModel.ClothesCollection)
                .snapshots()),
        TabBarViewDesign(
            firestoreCollection: FirebaseFirestore.instance
                .collection(ProductModel.HomeApplianceCollection)
                .snapshots()),
      ]),
    );
  }
}
