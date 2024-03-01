import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import '../model/glasse_model.dart';


class GlassesHelper {

  static Future<List<Glasses>?> getData({required String path}) async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('$path').get();
    if (snapshot.exists) {
      var jsonString = json.encode(snapshot.value);
      return glassesFromJson(jsonString);
    } else {
      print('No data available.');
    }
    return null;
  }
}

class GlassesController extends GetxController {
  var glasses = <Glasses>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    isLoading(true);
    try {
      var glassesList = await GlassesHelper.getData(path: 'data');
      if (glassesList != null) {
        glasses.assignAll(glassesList);
      }
    } finally {
      isLoading(false);
    }
  }
}