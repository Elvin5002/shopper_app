class ProductDataModel {
  ProductDataModel(
      {required this.imageLink,
      required this.productName,
      required this.productPrice});

  String imageLink;
  String productName;
  double productPrice;

  static List<ProductDataModel> productData = [
    ProductDataModel(
        imageLink: 'assets/png/hat.png',
        productName: 'Sez Brimmed Hat',
        productPrice: 300),
    ProductDataModel(
        imageLink: 'assets/png/jacket1.png',
        productName: 'Warm Zipper',
        productPrice: 350),
    ProductDataModel(
        imageLink: 'assets/png/jacket2.png',
        productName: 'Warm Zipper 2',
        productPrice: 34),
    ProductDataModel(
        imageLink: 'assets/png/belt.png',
        productName: 'Leather Belt',
        productPrice: 50),

  ];
}
