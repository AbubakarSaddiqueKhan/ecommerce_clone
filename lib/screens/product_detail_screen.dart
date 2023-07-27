import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/screens/cart_detail_screen.dart';
import 'package:flutter_hair_cleaner_firebase/widgets/lists.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../model/product_model.dart';

class ProductDetailedScreenDesign extends StatefulWidget {
  const ProductDetailedScreenDesign(
      {super.key,
      required this.product_id,
      required this.product_name,
      required this.product_price,
      required this.product_image_url});

  final String product_id;
  final String product_name;
  final double product_price;
  final String product_image_url;

  @override
  State<ProductDetailedScreenDesign> createState() =>
      _ProductDetailedScreenDesignState();
}

int productQuantity = 1;

class _ProductDetailedScreenDesignState
    extends State<ProductDetailedScreenDesign> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        actions: [
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
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: widget.product_id,
            child: Container(
              width: screenWidth,
              height: clientHeight * 0.54,
              child: Image.network(widget.product_image_url),
            ),
          ),
          SizedBox(
            height: clientHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.white,
                        offset: Offset(-2, -2),
                      ),
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.black12,
                        offset: Offset(2, 2),
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage("assets/images/natural.png"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.white,
                        offset: Offset(-2, -2),
                      ),
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.black12,
                        offset: Offset(2, 2),
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage("assets/images/herbal.png"),
                        fit: BoxFit.fill)),
              ),
              Container(
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.white,
                        offset: Offset(-2, -2),
                      ),
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.black12,
                        offset: Offset(2, 2),
                      )
                    ],
                    image: DecorationImage(
                        image: AssetImage("assets/images/moisturising.png"),
                        fit: BoxFit.fill)),
              )
            ],
          ),
          SizedBox(
            height: clientHeight * 0.02,
          ),
          Container(
            width: screenWidth,
            height: clientHeight * 0.25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.black12,
                  offset: Offset(-2, -2),
                ),
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: Colors.white,
                  offset: Offset(2, 2),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth,
                  height: clientHeight * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: clientHeight * 0.15,
                        width: screenWidth * 0.6,
                        alignment: Alignment.center,
                        child: Text(
                          widget.product_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: screenWidth * 0.045),
                        ),
                      ),
                      RatingBar.builder(
                        direction: Axis.horizontal,
                        glowColor: Colors.black,
                        glow: true,
                        itemSize: screenWidth * 0.055,
                        itemCount: 5,
                        unratedColor: Colors.black12,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            color: Colors.black,
                          );
                        },
                        onRatingUpdate: (value) {
                          print(value);
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: clientHeight * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ((widget.product_price) * productQuantity).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: screenWidth * 0.045),
                      ),
                      Container(
                        width: screenWidth * 0.555,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (productQuantity > 1) {
                                      print(
                                          "decreased by 1 \n now total quantity is : $productQuantity");
                                      productQuantity = productQuantity - 1;
                                    }
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.04),
                                )),
                            Text(
                              productQuantity.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.04),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    print(
                                        "increased by 1 \n now total quantity is : $productQuantity");
                                    productQuantity = productQuantity + 1;
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.038),
                                ))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() async {
                            // await firebaseFirestore
                            //     .collection(ProductModel.CartDataCollection)
                            //     .doc(ProductModel
                            //         .LeLaboSantalEauDeParfumFragranceProduct)
                            //     .delete();
                            CollectionReference cartCollection =
                                firebaseFirestore.collection(
                                    ProductModel.CartDataCollection);

                            await cartCollection.doc(widget.product_id).set({
                              ProductModel.keyProductId: widget.product_id,
                              ProductModel.KeyProductName: widget.product_name,
                              ProductModel.KeyProductPrice:
                                  widget.product_price,
                              ProductModel.KeyProductImageUrl:
                                  widget.product_image_url
                            });

                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) {
                            //     return CartDetailScreenDesign();
                            //   },
                            // ));

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Successfully Added to Cart")));
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.18,
                          height: clientHeight * 0.045,
                          child: Text(
                            "Cart",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                              boxShadow: [
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
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
