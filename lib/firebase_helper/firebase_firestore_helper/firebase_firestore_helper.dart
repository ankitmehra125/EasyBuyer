import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easybuyer/constants/constants.dart';
import 'package:easybuyer/firebase_helper/firebase_firestore_helper/firebase_firestore_helper.dart';
import 'package:easybuyer/models/category_model/category_model.dart';

class FirebaseFirestoreHelper
{
  static FirebaseFirestoreHelper instance = FirebaseFirestoreHelper();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<Iterable<CategoryModel>> getCategories() async
  {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection("categories").get();

      Iterable<CategoryModel> categoriesList = querySnapshot.docs
       .map((e) => CategoryModel.fromJson(e.data()));

      return categoriesList;
    } catch(e) {
      showMessage(e.toString());
      return [];
    }
  }
}