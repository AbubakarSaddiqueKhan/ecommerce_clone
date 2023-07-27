import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/model/product_model.dart';

class AddDataToFirebase extends StatefulWidget {
  const AddDataToFirebase({super.key});

  @override
  State<AddDataToFirebase> createState() => _AddDataToFirebaseState();
}

class _AddDataToFirebaseState extends State<AddDataToFirebase> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data to Firbase"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // TextButton(
            //     onPressed: () async {
            //  make the collection of the face wash

            //       CollectionReference faceWashCollection = firebaseFirestore
            //           .collection(ProductModel.faceWashCollection);

            //       //  make the document and set's it's data
            //       await faceWashCollection
            //           .doc(ProductModel.CetaphilGentleSkinCleanserFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.CetaphilGentleSkinCleanserFaceWash,
            //         ProductModel.KeyProductName:
            //             "Cetaphil Gentle Skin Cleanser",
            //         ProductModel.KeyProductPrice: 7500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FCetaphil_Gentle_Skin_Cleanser.png?alt=media&token=70ac1200-fa8b-4be3-9728-ad98a553d649"
            //       });

            //       await faceWashCollection
            //           .doc(ProductModel.UrsaMajorFantasticFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.UrsaMajorFantasticFaceWash,
            //         ProductModel.KeyProductName: "Ursa Major Fantastic",
            //         ProductModel.KeyProductPrice: 9300,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FUrsa_Major_Fantastic_Face_Wash.png?alt=media&token=1a80995e-5cb6-45aa-98fc-f703211e414f"
            //       });

            //       await faceWashCollection
            //           .doc(ProductModel.FirstAidBeautyFaceCleanserFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.FirstAidBeautyFaceCleanserFaceWash,
            //         ProductModel.KeyProductName:
            //             "First Aid Beauty Face Cleanser",
            //         ProductModel.KeyProductPrice: 6800,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FFirst_Aid_Beauty_Face_Cleanser.png?alt=media&token=1f39243b-36a4-4a5f-8f0a-fb0495356249"
            //       });

            //       await faceWashCollection
            //           .doc(ProductModel.NeutrogenaOilFreeAcneFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.NeutrogenaOilFreeAcneFaceWash,
            //         ProductModel.KeyProductName: "Neutrogena Oil Free Acne",
            //         ProductModel.KeyProductPrice: 2600,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FNeutrogena_Oil-Free_Acne_Wash.png?alt=media&token=0d6dbc59-fa8c-44be-94df-a17eb13d1703"
            //       });

            //       await faceWashCollection
            //           .doc(ProductModel.FreshSoyFaceCleanserFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.FreshSoyFaceCleanserFaceWash,
            //         ProductModel.KeyProductName: "Fresh Soy Face Cleanser",
            //         ProductModel.KeyProductPrice: 1200,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FFresh_Soy_Face_Cleanser.png?alt=media&token=5bd2be80-607b-4525-a47a-9110702759ef"
            //       });

            //       await faceWashCollection
            //           .doc(ProductModel.EveLomCleanserFaceWash)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.EveLomCleanserFaceWash,
            //         ProductModel.KeyProductName: "Eve Lom Cleanser",
            //         ProductModel.KeyProductPrice: 40500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Face%20Wash%2FEve_Lom_Cleanser.png?alt=media&token=69e72a88-550d-4616-a198-06bb5a3925b7"
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(content: Text("Data Added Successfully")));
            //     },
            //     child: Text("Face wash successfully data to firebase")),
            // ElevatedButton(
            //     onPressed: () async {
            //       CollectionReference hairProductsCollection = firebaseFirestore
            //           .collection(ProductModel.hairProductsCollection);

            //       await hairProductsCollection
            //           .doc(ProductModel.OribeDryTexturizingSprayHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.OribeDryTexturizingSprayHairProduct,
            //         ProductModel.KeyProductName: "Oribe Dry Texturizing Spray",
            //         ProductModel.KeyProductPrice: 23500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FOribe_Dry_Texturizing_Spray.png?alt=media&token=86ffc4f1-8bad-4f58-982e-b8316355d751"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel.MoroccanoilTreatmentHairOilHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.MoroccanoilTreatmentHairOilHairProduct,
            //         ProductModel.KeyProductName:
            //             "Moroccanoil Treatment Hair Oil",
            //         ProductModel.KeyProductPrice: 20500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FMoroccanoil_Treatment_Hair_Oil.png?alt=media&token=c99706b7-a647-4e72-a333-bd61c16946f5"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel.PureologyHydrateShampooHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.PureologyHydrateShampooHairProduct,
            //         ProductModel.KeyProductName: "Pureology Hydrate Shampoo",
            //         ProductModel.KeyProductPrice: 29000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FPureology_Hydrate_Shampoo.png?alt=media&token=d3bad52a-6464-46af-8941-b51f336b100b"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel
            //               .RCoDallasBiotinThickeningShampooHairProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel
            //             .RCoDallasBiotinThickeningShampooHairProduct,
            //         ProductModel.KeyProductName:
            //             "R + Co Dallas Biotin Thickening Shampoo",
            //         ProductModel.KeyProductPrice: 29000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FR%2BCo_Dallas_Biotin_Thickening_Shampoo.png?alt=media&token=c1353ff8-8099-4f16-8d30-c84d393ab59e"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel
            //               .LivingProofFullThickeningCreamHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.LivingProofFullThickeningCreamHairProduct,
            //         ProductModel.KeyProductName:
            //             "Living Proof Full Thickening Cream",
            //         ProductModel.KeyProductPrice: 9000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FLiving_Proof_Full_Thickening_Cream.png?alt=media&token=eff44f81-9be6-403e-8f4c-93a995cfcbb0"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel.KenraVolumeSprayHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.KenraVolumeSprayHairProduct,
            //         ProductModel.KeyProductName: "Kenra Volume Spray",
            //         ProductModel.KeyProductPrice: 13000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FKenra_Volume_Spray.png?alt=media&token=d50a4dc1-c025-4086-beaf-59b27c1afeb5"
            //       });

            //       await hairProductsCollection
            //           .doc(ProductModel.MoroccanoilCurlDefiningCreamHairProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.MoroccanoilCurlDefiningCreamHairProduct,
            //         ProductModel.KeyProductName:
            //             "Moroccanoil Curl Defining Cream",
            //         ProductModel.KeyProductPrice: 19500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Hair%20Products%2FMoroccanoil_Curl_Defining_Cream.png?alt=media&token=68356a5b-2cd2-47e1-837f-e0f3455e6811"
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //           content:
            //               Text("Hairs data added successfully to firebase")));
            //     },
            //     child: Text("Add Hairs data")),
            // TextButton(
            //     onPressed: () async {
            //       CollectionReference fragrancesCollectionReference =
            //           firebaseFirestore
            //               .collection(ProductModel.fragrancesCollection);

            //       await fragrancesCollectionReference
            //           .doc(ProductModel
            //               .BleuDeChanelChanelParfumSprayFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel
            //             .BleuDeChanelChanelParfumSprayFragranceProduct,
            //         ProductModel.KeyProductName:
            //             "Bleu De Chanel Chanel Parfum Spray",
            //         ProductModel.KeyProductPrice: 44000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FBleu_De_Chanel_Chanel_Parfum_Spray.png?alt=media&token=111b1d00-f903-45e8-ba20-534e0ad0f322"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel
            //               .ViktorRolfFlowerbombEauDeParfumFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel
            //             .ViktorRolfFlowerbombEauDeParfumFragranceProduct,
            //         ProductModel.KeyProductName:
            //             "Viktor Rolf Flower Bomb Eau De Parfum",
            //         ProductModel.KeyProductPrice: 23000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FViktor_Rolf_Flowerbomb_Eau_de_Parfum.png?alt=media&token=ca5d0c34-d998-4db1-91b8-396e1a4d719d"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel.EauDeParfumSprayTomFordFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.EauDeParfumSprayTomFordFragranceProduct,
            //         ProductModel.KeyProductName: "Eau De Parfum Spray Tom Ford",
            //         ProductModel.KeyProductPrice: 45000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FEau_De_Parfum_Spray_Tom_Ford.png?alt=media&token=f481a5f3-718b-409a-839c-46c11dd31f3d"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel.CocoMademoiselleFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.CocoMademoiselleFragranceProduct,
            //         ProductModel.KeyProductName: "Coco Mademoiselle",
            //         ProductModel.KeyProductPrice: 62000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FCoco_Mademoiselle.png?alt=media&token=221b152e-8ec5-43b8-a6e5-5eda38b20394"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel
            //               .GucciBloomEauDeParfumSprayFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.GucciBloomEauDeParfumSprayFragranceProduct,
            //         ProductModel.KeyProductName:
            //             "Gucci Bloom Eau De Parfum Spray",
            //         ProductModel.KeyProductPrice: 43500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FGucci_Bloom_Eau_De_Parfum_Spray.png?alt=media&token=cd332cd6-b467-493c-baef-b55dc444d1ce"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel.MissDiorFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.MissDiorFragranceProduct,
            //         ProductModel.KeyProductName: "Miss Dior",
            //         ProductModel.KeyProductPrice: 48500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FMiss_Dior.png?alt=media&token=0e025efe-7f4f-4c12-a734-6f84a29b466e"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel
            //               .DaisyEauSoFreshMarcJacobsEauDeToiletteFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel
            //             .DaisyEauSoFreshMarcJacobsEauDeToiletteFragranceProduct,
            //         ProductModel.KeyProductName:
            //             "Daisy Eau So Fresh Marc Jacobs Eau De Toilette",
            //         ProductModel.KeyProductPrice: 36500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FDaisy_Eau_So_Fresh_Marc_Jacobs_Eau_De_Toilette.png?alt=media&token=cc407ad0-64c9-4530-a609-75beb744553c"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(
            //               ProductModel.OrchidEauDeParfumTomFordFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.OrchidEauDeParfumTomFordFragranceProduct,
            //         ProductModel.KeyProductName:
            //             "Orchid Eau De Parfum Tom Ford",
            //         ProductModel.KeyProductPrice: 72000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FOrchid_Eau_De_Parfum_Tom_Ford.png?alt=media&token=bc876f45-20d8-4d0e-b796-00eff5f9374a"
            //       });

            //       await fragrancesCollectionReference
            //           .doc(ProductModel.LeLaboSantalEauDeParfumFragranceProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.LeLaboSantalEauDeParfumFragranceProduct,
            //         ProductModel.KeyProductName: "Le Labo Santal Eau De Parfum",
            //         ProductModel.KeyProductPrice: 105000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Fragrances%2FLe_Labo_Santal_33_Eau_De_Parfum.png?alt=media&token=f7210d8e-e045-41e5-863d-9f1872533c33"
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //           content: Text(
            //               "Fragrances Successfully added to the firebase")));
            //     },
            //     child: Text("Add Fragrances to firebase"))

            // ElevatedButton(
            //     onPressed: () async {
            //       CollectionReference cartCollection = firebaseFirestore
            //           .collection(ProductModel.CartDataCollection);

            //       await cartCollection.doc("delete").set({"id": "delete"});

            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //           content: Text("Cart collection made successfully")));
            //     },
            //     child: Text("Add cart collection"))

            ElevatedButton(
                onPressed: () async {
                  firebaseFirestore
                      .collection(ProductModel.fragrancesCollection)
                      .doc(ProductModel
                          .DaisyEauSoFreshMarcJacobsEauDeToiletteFragranceProduct)
                      .update({
                    ProductModel.KeyProductName:
                        "Daisy Eau So Fresh Marc Jacobs"
                  });
                },
                child: Text("Update data"))
          ],
        ),
      ),
    );
  }
}
