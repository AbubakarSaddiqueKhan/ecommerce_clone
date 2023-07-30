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

            // ElevatedButton(
            //     onPressed: () async {
            //       firebaseFirestore
            //           .collection(ProductModel.fragrancesCollection)
            //           .doc(ProductModel
            //               .DaisyEauSoFreshMarcJacobsEauDeToiletteFragranceProduct)
            //           .update({
            //         ProductModel.KeyProductName:
            //             "Daisy Eau So Fresh Marc Jacobs"
            //       });
            //     },
            //     child: Text("Update data"))

            // ElevatedButton(
            //     onPressed: () async {
            //       CollectionReference shoesCollection = firebaseFirestore
            //           .collection(ProductModel.shoesCollection);

            //       await shoesCollection
            //           .doc(ProductModel.LoaferShoesProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel.LoaferShoesProduct,
            //         ProductModel.KeyProductName: "Loafer",
            //         ProductModel.KeyProductPrice: 3500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FLoafer.png?alt=media&token=d827bc01-06bf-44db-9524-885ab1a8e784"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.SneakersShoesProducts)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.SneakersShoesProducts,
            //         ProductModel.KeyProductName: "Sneakers",
            //         ProductModel.KeyProductPrice: 3000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FSneakers.png?alt=media&token=6b1b33bd-2277-4076-aa3f-324d78cab6a9"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.SandalShoesProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel.SandalShoesProduct,
            //         ProductModel.KeyProductName: "Sandal",
            //         ProductModel.KeyProductPrice: 3200,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FSandal.png?alt=media&token=08e697b7-3869-459e-a7ad-4f011df2576c"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.MoccasinShoesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.MoccasinShoesProduct,
            //         ProductModel.KeyProductName: "Moccasin",
            //         ProductModel.KeyProductPrice: 8500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FMoccasin.png?alt=media&token=83ec6d0d-e2fc-41f5-b28b-83f563f11135"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.DressShoeShoesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.DressShoeShoesProduct,
            //         ProductModel.KeyProductName: "Dress Shoe",
            //         ProductModel.KeyProductPrice: 2500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FDress_shoe.png?alt=media&token=2471efc8-b49a-41c0-9315-f8ba8157f000"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.MaryJaneShoesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.MaryJaneShoesProduct,
            //         ProductModel.KeyProductName: "Mary Jane",
            //         ProductModel.KeyProductPrice: 5000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FMary_Jane.png?alt=media&token=3d186788-4bb4-4a72-ba2b-ae27a19268c1"
            //       });

            //       await shoesCollection
            //           .doc(ProductModel.SlippersShoesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.SlippersShoesProduct,
            //         ProductModel.KeyProductName: "Slippers",
            //         ProductModel.KeyProductPrice: 2000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Shoes%20Collection%2FSlippers.png?alt=media&token=67dd1672-5092-422e-a04f-017107d0eef8"
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //           content: Text(
            //               "Shoes data successfully added to the firebase")));
            //     },
            //     child: Text("Add shoes collection to firebase"))

            // ElevatedButton(
            //     onPressed: () async {
            //       CollectionReference clothesCollection = firebaseFirestore
            //           .collection(ProductModel.ClothesCollection);

            //       await clothesCollection
            //           .doc(ProductModel.TrousersClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.TrousersClothesProduct,
            //         ProductModel.KeyProductName: "Trousers",
            //         ProductModel.KeyProductPrice: 6000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FTrousers.png?alt=media&token=c57f5f47-9c9a-41b0-bf3f-00faac6ba287"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.JacketClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.JacketClothesProduct,
            //         ProductModel.KeyProductName: "Jacket",
            //         ProductModel.KeyProductPrice: 3500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FJacket.png?alt=media&token=f328360e-a024-490c-b8b2-44cc96406de7"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.SweaterClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.SweaterClothesProduct,
            //         ProductModel.KeyProductName: "Sweater",
            //         ProductModel.KeyProductPrice: 3000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FSweater.png?alt=media&token=756ee417-7e8a-494f-8d29-7f9c97af5d3d"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.TShirtClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.TShirtClothesProduct,
            //         ProductModel.KeyProductName: "T Shirt",
            //         ProductModel.KeyProductPrice: 6500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FT-shirt.png?alt=media&token=6849a3de-fe15-4f32-9fed-9952fa81cecb"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.CoatClothesProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel.CoatClothesProduct,
            //         ProductModel.KeyProductName: "Coat",
            //         ProductModel.KeyProductPrice: 19000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FCoat.png?alt=media&token=9ec6e673-b551-4802-988b-0c7d26bde7fb"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.SkirtClothesProduct)
            //           .set({
            //         ProductModel.keyProductId: ProductModel.SkirtClothesProduct,
            //         ProductModel.KeyProductName: "Skirt",
            //         ProductModel.KeyProductPrice: 4500,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FSkirt.png?alt=media&token=348cfe56-d60f-4b12-bd94-32ce41c6c6c4"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.WaistcoatClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.WaistcoatClothesProduct,
            //         ProductModel.KeyProductName: "WaistCoat",
            //         ProductModel.KeyProductPrice: 13000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FWaistcoat.png?alt=media&token=3383eef7-d70c-47fd-9b55-ba3ddc5e7540"
            //       });

            //       await clothesCollection
            //           .doc(ProductModel.HoodieClothesProduct)
            //           .set({
            //         ProductModel.keyProductId:
            //             ProductModel.HoodieClothesProduct,
            //         ProductModel.KeyProductName: "Hoodie",
            //         ProductModel.KeyProductPrice: 5000,
            //         ProductModel.KeyProductImageUrl:
            //             "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Clothes%20Categories%2FHoodie.png?alt=media&token=54d04c2c-6281-4516-8f3c-66ebe8176ee7"
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //           content: Text(
            //               "Clothes COLLECTION Added Successfully to firebase")));
            //     },
            //     child: Text("Add Clothes to the firebase"))

            ElevatedButton(
                onPressed: () async {
                  CollectionReference homeApplianceCollectionReference =
                      firebaseFirestore
                          .collection(ProductModel.HomeApplianceCollection);

                  await homeApplianceCollectionReference
                      .doc(ProductModel.RefrigeratorHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.RefrigeratorHomeApplianceProduct,
                    ProductModel.KeyProductName: "Refrigerator",
                    ProductModel.KeyProductPrice: 135000,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2Frefrigerator.png?alt=media&token=b0a7ade3-2555-47ca-8964-3c528b032cbb"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.MicrowaveHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.MicrowaveHomeApplianceProduct,
                    ProductModel.KeyProductName: "Microwave",
                    ProductModel.KeyProductPrice: 61500,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FMicrowave.png?alt=media&token=2a1d3047-6699-4367-8aae-78d3a58dcfc5"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.BlenderHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.BlenderHomeApplianceProduct,
                    ProductModel.KeyProductName: "Blender",
                    ProductModel.KeyProductPrice: 45000,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FBlender.png?alt=media&token=37f5a849-eca5-436b-bd39-1e4517bc9fe3"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.WashingMachineHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.WashingMachineHomeApplianceProduct,
                    ProductModel.KeyProductName: "Washing Machine",
                    ProductModel.KeyProductPrice: 263500,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FWashing_machine.png?alt=media&token=08795de6-1f18-48a0-a754-fa7a6254d1e7"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.VacuumCleanerHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.VacuumCleanerHomeApplianceProduct,
                    ProductModel.KeyProductName: "Vacuum Cleaner",
                    ProductModel.KeyProductPrice: 102500,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FVacuum_cleaner.png?alt=media&token=fef86e8c-dea6-4c35-a9d4-ccacb5a7a73e"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.FreezerHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.FreezerHomeApplianceProduct,
                    ProductModel.KeyProductName: "Freezer",
                    ProductModel.KeyProductPrice: 170000,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FFreezer.png?alt=media&token=73e36f95-04fb-4b84-aaa8-0865079db513"
                  });

                  await homeApplianceCollectionReference
                      .doc(ProductModel.ClothesIronHomeApplianceProduct)
                      .set({
                    ProductModel.keyProductId:
                        ProductModel.ClothesIronHomeApplianceProduct,
                    ProductModel.KeyProductName: "Clothes Iron",
                    ProductModel.KeyProductPrice: 17000,
                    ProductModel.KeyProductImageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/ecommerce-98828.appspot.com/o/Home%20Appliance%2FClothes_iron.png?alt=media&token=db5e9267-dd92-42f5-a8d6-742cb8e1c0b8"
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Home appliance data successsfully added to the firebase")));
                },
                child: Text("Add home appliance data to firebase"))
          ],
        ),
      ),
    );
  }
}
