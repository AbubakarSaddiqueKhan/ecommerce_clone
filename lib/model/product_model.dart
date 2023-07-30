import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String? productId;
  String? product_image_url;
  double? productPrice;
  String? productName;

  ProductModel({
    this.productId,
    this.product_image_url,
    this.productPrice,
    this.productName,
  });

  static const String keyProductId = "product_id";
  static const String KeyProductImageUrl = "product_image_url";
  static const String KeyProductPrice = "product_price";
  static const String KeyProductName = "product_name";

  static const String faceWashCollection = "face_wash";

  static const String CetaphilGentleSkinCleanserFaceWash =
      "cetaphil_gentle_skin_cleanser_face_wash";
  static const String UrsaMajorFantasticFaceWash =
      "ursa_major_fantastic_face_wash";
  static const String FirstAidBeautyFaceCleanserFaceWash =
      "first_aid_beauty_face_cleanser_face_wash";
  static const String NeutrogenaOilFreeAcneFaceWash =
      "neutrogena_oil_free_acne_face_wash";
  static const String FreshSoyFaceCleanserFaceWash =
      "fresh_soy_face_cleanser_face_wash";
  static const String EveLomCleanserFaceWash = "eve_lom_cleanser_face_wash";

  static const String hairProductsCollection = "hair_products";

  static const String OribeDryTexturizingSprayHairProduct =
      "oribe_Dry_texturizing_spray_hair_product";

  static const String MoroccanoilTreatmentHairOilHairProduct =
      "moroccanoil_treatment_hair_oil_hair_product";

  static const String PureologyHydrateShampooHairProduct =
      "pureology_hydrate_shampoo_hair_product";

  static const String RCoDallasBiotinThickeningShampooHairProduct =
      "r+co_dallas_biotin_thickening_shampoo_hair_product";

  static const String LivingProofFullThickeningCreamHairProduct =
      "living_proof_full_thickening_cream_hair_product";

  static const String KenraVolumeSprayHairProduct =
      "kenra_volume_spray_hair_product";

  static const String MoroccanoilCurlDefiningCreamHairProduct =
      "moroccanoil_curl_defining_cream_hair_product";

  static const String fragrancesCollection = "fragrances";

  static const String BleuDeChanelChanelParfumSprayFragranceProduct =
      "bleu_de_chanel_chanel_parfum_spray_fragrance_product";

  static const String ViktorRolfFlowerbombEauDeParfumFragranceProduct =
      "viktor_rolf_flowerbomb_eaude_parfum_fragrance_product";

  static const String EauDeParfumSprayTomFordFragranceProduct =
      "eau_de_parfum_spray_tom_ford_fragrance_product";

  static const String CocoMademoiselleFragranceProduct =
      "coco_mademoiselle_fragrance_product";

  static const String GucciBloomEauDeParfumSprayFragranceProduct =
      "gucci_bloom_eau_de_parfum_spray_fragrance+product";

  static const String MissDiorFragranceProduct = "miss_dior_fragrance_product";

  static const String DaisyEauSoFreshMarcJacobsEauDeToiletteFragranceProduct =
      "daisy_eau_so_fresh_marc_jacobs_eau_de_toilette_fragrance_product";

  static const String OrchidEauDeParfumTomFordFragranceProduct =
      "orchid_eau_de_parfum_tom_ford_fragrance_product";

  static const String LeLaboSantalEauDeParfumFragranceProduct =
      "le_labo_santal_eau_de_parfum_fragrance_product";

  static const String shoesCollection = "shoes_categories";

  static const String LoaferShoesProduct = "loafer_shoes_product";

  static const String SneakersShoesProducts = "sneakers_shoes_product";

  static const String SandalShoesProduct = "sandal_shoes_product";

  static const String MoccasinShoesProduct = "moccasin_shoes_product";

  static const String DressShoeShoesProduct = "dress_shoe_shoes_product";

  static const String MaryJaneShoesProduct = "mary_jane_shoes_product";

  static const String SlippersShoesProduct = "slippers_shoes_product";

  static const String ClothesCollection = "clothes_categories";

  static const String TrousersClothesProduct = "trousers_clothes_product";

  static const String JacketClothesProduct = "jacket_clothes_product";

  static const String SweaterClothesProduct = "sweater_clothes_product";

  static const String TShirtClothesProduct = "t_shirt_clothes_product";

  static const String CoatClothesProduct = "coat_clothes_product";

  static const String SkirtClothesProduct = "skirt_clothes_product";

  static const String WaistcoatClothesProduct = "waistcoat_clothes_product";

  static const String HoodieClothesProduct = "hoodie_clothes_product";

  static const String HomeApplianceCollection = "home_appliance";

  static const String RefrigeratorHomeApplianceProduct =
      "refrigerator_home_appliance_product";

  static const String MicrowaveHomeApplianceProduct =
      "microwave_home_appliance_product";

  static const String BlenderHomeApplianceProduct =
      "blender_home_appliance_product";

  static const String WashingMachineHomeApplianceProduct =
      "washing_machine_home_appliance_product";

  static const String VacuumCleanerHomeApplianceProduct =
      "vacuum_cleaner_home_appliance_product";

  static const String FreezerHomeApplianceProduct =
      "freezer_home_appliance_product";

  static const String ClothesIronHomeApplianceProduct =
      "clothes_iron_home_appliance_product";

  static const String CartDataCollection = "cart_data";
  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'productId': productId,
  //     'productImageUrl': productImageUrl,
  //     'productPrice': productPrice,
  //     'productName': productName,
  //   };
  // }

  // ProductModel(
  //     {required this.productId,
  //     required this.productName,
  //     required this.productPrice,
  //     required this.productImageUrl});

  String? get getProductId => this.productId;

  set setProductId(String productId) => this.productId = productId;

  get getProductImageUrl => this.product_image_url;

  set setProductImageUrl(productImageUrl) =>
      this.product_image_url = productImageUrl;

  get getProductPrice => this.productPrice;

  set setProductPrice(productPrice) => this.productPrice = productPrice;

  get getProductName => this.productName;

  set setProductName(productName) => this.productName = productName;

  ProductModel copyWith({
    String? productId,
    String? productImageUrl,
    double? productPrice,
    String? productName,
  }) {
    return ProductModel(
      productId: productId ?? this.productId,
      product_image_url: productImageUrl ?? this.product_image_url,
      productPrice: productPrice ?? this.productPrice,
      productName: productName ?? this.productName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'productImageUrl': product_image_url,
      'productPrice': productPrice,
      'productName': productName,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productId: map['productId'] != null ? map['productId'] as String : '',
      product_image_url: map['productImageUrl'] != null
          ? map['productImageUrl'] as String
          : '',
      productPrice:
          map['productPrice'] != null ? map['productPrice'] as double : null,
      productName:
          map['productName'] != null ? map['productName'] as String : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(productId: $productId, productImageUrl: $product_image_url, productPrice: $productPrice, productName: $productName)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.productId == productId &&
        other.product_image_url == product_image_url &&
        other.productPrice == productPrice &&
        other.productName == productName;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        product_image_url.hashCode ^
        productPrice.hashCode ^
        productName.hashCode;
  }
}
