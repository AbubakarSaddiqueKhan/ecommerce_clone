import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hair_cleaner_firebase/model/product_model.dart';
import 'package:flutter_hair_cleaner_firebase/screens/product_detail_screen.dart';

class TabBarViewDesign extends StatefulWidget {
  const TabBarViewDesign({super.key, required this.firestoreCollection});

  final Stream<QuerySnapshot<Map<String, dynamic>>> firestoreCollection;

  @override
  State<TabBarViewDesign> createState() => _TabBarViewDesignState();
}

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

class _TabBarViewDesignState extends State<TabBarViewDesign> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    // CollectionReference faceWashCollection =
    //     firebaseFirestore.collection(ProductModel.faceWashCollection);

    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;
    return StreamBuilder(
      stream: widget.firestoreCollection,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          // print((snapshot.data!.docs.length));
          // print(snapshot.data!.docs.first.data());
          int itemCount = snapshot.data!.docs.length;
          // print("Item count : $itemCount");

          // print(
          //     "id : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).productId}");

          // print(
          //     (" Prod id : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).getProductId}"));

          // print(
          //     "name : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).productName}");

          // print(
          //     (" Prod name : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).getProductName}"));

          // print(
          //     "price : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).productPrice}");

          // print(
          //     (" Prod price : ${ProductModel.fromMap(snapshot.data!.docs[1].data()).getProductPrice}"));

          // var item = snapshot.data!.docs as DocumentSnapshot;

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider.builder(
                    itemCount: itemCount,
                    itemBuilder: (context, index, realIndex) {
                      var data = snapshot.data!.docs[index];
                      // ProductModel productModel = ProductModel.fromMap(
                      //     snapshot.data!.docs[index].data());
                      return Container(
                          width: screenWidth * 0.4,
                          height: clientHeight * 0.5,
                          decoration: BoxDecoration(
                              // image: DecorationImage(image: NetworkImage(
                              //         data[ProductModel.KeyProductImageUrl]),
                              //     fit: BoxFit.fill,)
                              ),
                          child: Image.network(
                            data[ProductModel.KeyProductImageUrl],
                            fit: BoxFit.cover,
                          )
                          // child: Image(
                          //   image: NetworkImage(
                          //       data[ProductModel.KeyProductImageUrl]),
                          //   fit: BoxFit.fill,
                          // ),
                          );
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                Container(
                  width: screenWidth,
                  height: clientHeight * 0.8,
                  child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    padding: EdgeInsets.only(top: 10),
                    controller: scrollController,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      var data = snapshot.data!.docs[index];
                      print(data[ProductModel.keyProductId]);
                      print(data[ProductModel.KeyProductPrice]);
                      print(data[ProductModel.KeyProductImageUrl]);
                      print(data[ProductModel.KeyProductName]);
                      // ProductModel productModel = ProductModel.fromMap(
                      //     snapshot.data!.docs[index].data());

                      // print(
                      //     '????????????????????????????????????$productModel');
                      return InkWell(
                        onTap: () {
                          setState(() {
                            print(index);

                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return ProductDetailedScreenDesign(
                                  product_id: data[ProductModel.keyProductId],
                                  product_name:
                                      data[ProductModel.KeyProductName],
                                  product_price:
                                      data[ProductModel.KeyProductPrice],
                                  product_image_url:
                                      data[ProductModel.KeyProductImageUrl],
                                );
                              },
                            ));
                          });
                        },
                        child: ListTile(
                          leading: Hero(
                            tag: data[ProductModel.keyProductId],
                            child: Container(
                              width: screenWidth * 0.1,
                              height: clientHeight * 0.05,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Colors.white,
                                    offset: Offset(-1, -1),
                                  ),
                                  BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                              // child: Image(
                              //   image: NetworkImage(
                              //       data[ProductModel.KeyProductImageUrl]),
                              //   fit: BoxFit.fill,
                              // ),
                              child: Image.network(
                                data[ProductModel.KeyProductImageUrl],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          title: Text(
                            data[ProductModel.KeyProductName],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          trailing: Text(
                            data[ProductModel.KeyProductPrice].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Text(
              "Oops !! Something Went Wrong",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          );
        }
      },
    );
  }
}
