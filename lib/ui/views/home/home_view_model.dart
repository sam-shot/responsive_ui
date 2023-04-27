import 'dart:convert';
import 'dart:io';

import 'package:responsive_ui/core/model/user_model.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  bool? hover;
  UserModel? user;
  bool loading = true;

  init() async{
    String jsonString = await File('lib/core/data/user_data.json').readAsString();
    user = UserModel.fromJson(jsonDecode(jsonString));
    await  Future.delayed(const Duration(milliseconds: 200));
    loading = false;
    notifyListeners();
  }

}