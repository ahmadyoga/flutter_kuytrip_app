import 'package:flutter/services.dart';
import 'package:flutter_kuytrip_app/model/kuytrip_model.dart';

class Auth {
  static Future<Kuytrip> transaction() async {
    final String response = await rootBundle.loadString('assets/file.json');
    return kuytripFromJson(response);
  }
}
