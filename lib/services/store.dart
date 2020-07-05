import 'package:buy_that/colors.dart';
import 'package:buy_that/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: camel_case_types
class store
{
  final Firestore _firestore = Firestore.instance;
  addProduct(Product product)
  {
_firestore.collection(kProductsCollection).add(
    {
      kProductName: product.pName,
      kProductPrice:product.pPrice,
      kProductDescription:product.pDescription,
      kProductCategory:product.pCategory,
      kProductLocation:product.pLocation,
    });
  }
}

