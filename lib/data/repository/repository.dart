import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nike_redesign/data/models/user_model.dart';

class Repository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString(
      'lib/common/assets/jsons/user.json',
    );

    try {
      final data = json.decode(response);
      return UserModel.fromJson(data['data']);
    } catch (e) {
      throw Exception(e);
    }
  }
}
