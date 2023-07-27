import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';

class CartDetailScreenDesign extends StatefulWidget {
  const CartDetailScreenDesign({
    super.key,
  });

  @override
  State<CartDetailScreenDesign> createState() => _CartDetailScreenDesignState();
}

num total = 0;
num loopPrice = 0;
num totalPrice = 0;
int productQuantity = 1;

class _CartDetailScreenDesignState extends State<CartDetailScreenDesign> {
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot<Map<String, dynamic>>>
        firestoreCartCollectionReference = FirebaseFirestore.instance
            .collection(ProductModel.CartDataCollection)
            .snapshots();

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    // Future<int> itemCount = firestoreCartCollectionReference.length;
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
        title: Text(
          "Shopping Bag",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: screenWidth * 0.04,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: firestoreCartCollectionReference,
            builder: (context, snapshot) {
              int oldLength = snapshot.data!.docs.length;
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.data!.docs.length == 0) {
                return Center(
                  child: Text(
                    "Oops !! No Product Found",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                );
              } else if (snapshot.hasData) {
                print("Snapshot have some error");
                // if (oldLength == snapshot.data!.docs.length) {
                //   for (var i = 0; i < snapshot.data!.docs.length; i++) {
                //     var data = snapshot.data!.docs[i];
                //     data[ProductModel.KeyProductPrice];

                //     loopPrice = loopPrice + data[ProductModel.KeyProductPrice];
                //     print("price of ${data[ProductModel.KeyProductPrice]}");
                //     print("Loop price is : $loopPrice");
                //   }
                // } else {
                //   print("Length reduced ");
                //   // for (var i = 0; i < snapshot.data!.docs.length; i++) {
                //   //   var data = snapshot.data!.docs[i];
                //   //   data[ProductModel.KeyProductPrice];

                //   //   loopPrice = loopPrice - data[ProductModel.KeyProductPrice];
                //   //   print("price of ${data[ProductModel.KeyProductPrice]}");
                //   //   print("Loop price is : $loopPrice");
                //   // }
                // }

                if (snapshot.data!.docs.length >= oldLength) {
                  for (var element in snapshot.data!.docs) {
                    total = total + element[ProductModel.KeyProductPrice];
                    // print("item : $total");
                  }
                }
                print("total : $total");
                // print("Total Price is : $loopPrice");
                return Container(
                  width: screenWidth,
                  height: clientHeight,
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth,
                        height: clientHeight * 0.75,
                        child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            // print(snapshot.data!.docs.length);
                            var data = snapshot.data!.docs[index];

                            totalPrice =
                                totalPrice + data[ProductModel.KeyProductPrice];

                            // print(totalPrice);

                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: screenWidth * 0.15,
                                        height: screenWidth * 0.15,
                                        // child: Image.asset("assets/images/pixi.png"),
                                        child: Image.network(
                                          data[ProductModel.KeyProductImageUrl],
                                        ),
                                      ),
                                      Container(
                                        height: clientHeight * 0.15,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              data[ProductModel.KeyProductName],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: screenWidth * 0.04),
                                            ),
                                            // SizedBox(
                                            //   height: clientHeight * 0.01,
                                            // ),
                                            Container(
                                              height: clientHeight * 0.05,
                                              child: Text(
                                                data[ProductModel
                                                        .KeyProductPrice]
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        screenWidth * 0.04),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //   decoration: BoxDecoration(
                                      //     borderRadius: BorderRadius.circular(20),
                                      //     border: Border.all(
                                      //         color: Colors.black, width: 1),
                                      //   ),
                                      //   child: Row(
                                      //     mainAxisAlignment:
                                      //         MainAxisAlignment.spaceEvenly,
                                      //     crossAxisAlignment:
                                      //         CrossAxisAlignment.center,
                                      //     children: [
                                      //       TextButton(
                                      //         onPressed: () {
                                      //           setState(() {
                                      //             if (productQuantity > 1) {
                                      //               productQuantity =
                                      //                   productQuantity - 1;
                                      //             }
                                      //           });
                                      //         },
                                      //         child: Text(
                                      //           "-",
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               color: Colors.black),
                                      //         ),
                                      //       ),
                                      //       Text(
                                      //         productQuantity.toString(),
                                      //         style: TextStyle(
                                      //             fontWeight: FontWeight.bold,
                                      //             color: Colors.black),
                                      //       ),
                                      //       TextButton(
                                      //         onPressed: () {
                                      //           setState(() {
                                      //             productQuantity =
                                      //                 productQuantity + 1;
                                      //           });
                                      //         },
                                      //         child: Text(
                                      //           "+",
                                      //           style: TextStyle(
                                      //               fontWeight: FontWeight.bold,
                                      //               color: Colors.black),
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      IconButton(
                                          onPressed: () async {
                                            await firebaseFirestore
                                                .collection(ProductModel
                                                    .CartDataCollection)
                                                .doc(data[
                                                    ProductModel.keyProductId])
                                                .delete();

                                            print(data[
                                                ProductModel.KeyProductPrice]);

                                            setState(() {
                                              total = total -
                                                  data[ProductModel
                                                      .KeyProductPrice];
                                            });
                                          },
                                          icon: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: clientHeight * 0.02,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                  indent: screenWidth * 0.1,
                                  endIndent: screenWidth * 0.1,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: clientHeight * 0.25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(total.toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                              indent: screenWidth * 0.25,
                              endIndent: screenWidth * 0.25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Discount",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$ 99.99",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1,
                              indent: screenWidth * 0.25,
                              endIndent: screenWidth * 0.25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$ 99.99",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              width: screenWidth * 0.6,
                              height: clientHeight * 0.055,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
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
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                    )
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                "Proceed To Checkout",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.045),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    "Ooops !! NO Data Found",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
