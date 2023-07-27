import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/widgets/text.dart';

class CopyDesign extends StatefulWidget {
  const CopyDesign({super.key, required this.index});
  final int index;

  @override
  State<CopyDesign> createState() => _CopyDesignState();
}

bool isFavoriteSelected = false;

class _CopyDesignState extends State<CopyDesign> {
  @override
  Widget build(BuildContext context) {
    bool isEvenIndex = (widget.index) % 2 == 0;
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screeHeight = screenSize.height;
    var clientHeight = screeHeight - kToolbarHeight;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: clientHeight,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: Container(
                    width: screenWidth * 0.45,
                    height: clientHeight * 0.1,
                    alignment: Alignment.center,
                    child: Text(
                      MyText.foundResult,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.05,
                  top: isEvenIndex ? clientHeight * 0.125 : clientHeight * 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        print(widget.index);
                      });
                    },
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
                ),
                Positioned(
                  left: screenWidth * 0.55,
                  top: isEvenIndex
                      ? clientHeight * 0.0225
                      : clientHeight * 0.125,
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
                        InkWell(
                          onTap: () {
                            setState(() {
                              print(widget.index);
                            });
                          },
                          child: Container(
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
                  left: screenWidth * 0.05,
                  top: isEvenIndex ? clientHeight * 0.45 : clientHeight * 0.325,
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
                  top: isEvenIndex ? clientHeight * 0.35 : clientHeight * 0.45,
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
                    top: clientHeight * 0.675,
                    child: isEvenIndex
                        ? Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                          )
                        : SizedBox.shrink()),
                Positioned(
                    left: screenWidth * 0.05,
                    top:
                        isEvenIndex ? clientHeight * 0.77 : clientHeight * 0.65,
                    child: isEvenIndex
                        ? Container(
                            width: screenWidth * 0.4,
                            height: clientHeight * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/discount.png"),
                                    fit: BoxFit.fill),
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
                          )
                        : Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                          ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
