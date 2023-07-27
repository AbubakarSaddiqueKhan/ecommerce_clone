import 'package:flutter/material.dart';

class ProductDesign extends StatefulWidget {
  const ProductDesign({super.key});

  @override
  State<ProductDesign> createState() => _ProductDesignState();
}

bool isFavoriteSelected = false;

class _ProductDesignState extends State<ProductDesign> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;
    return Stack(
      children: [
        Positioned(
          left: screenWidth * 0.05,
          top: clientHeight * 0.1,
          child: Container(
            width: screenWidth * 0.425,
            height: clientHeight * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
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
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: clientHeight * 0.2,
                  width: screenWidth * 0.4,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pixi.png",
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                const Text(
                  "Anti Dandruff",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "\$ 99.99",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    isFavoriteSelected
                        ? Icon(
                            Icons.favorite,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.55,
          child: Container(
            width: screenWidth * 0.425,
            height: clientHeight * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
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
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: clientHeight * 0.2,
                  width: screenWidth * 0.4,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pixi.png",
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
                const Text(
                  "Anti Dandruff",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "\$ 99.99",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    isFavoriteSelected
                        ? Icon(
                            Icons.favorite,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
