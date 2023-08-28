import 'package:ecomerceapp/helper/shoes_model/shoes_model.dart';
import 'package:flutter/services.dart' as http;

class Helper {
  Future<List<ShoesModel>> GetMale() async {
    final data = await http.rootBundle.loadString("assets/json/men_shoes.json");
    final MalList = ShoesModel().ShoesModelFromJson(data);
    return MalList;
  }

  Future<List<ShoesModel>> GetFemal() async {
    final data =
        await http.rootBundle.loadString("assets/json/women_shoes.json");
    final FemalList = ShoesModel().ShoesModelFromJson(data);
    return FemalList;
  }

  Future<List<ShoesModel>> GetKids() async {
    final data =
        await http.rootBundle.loadString("assets/json/kids_shoes.json");
    final KidsList = ShoesModel().ShoesModelFromJson(data);
    return KidsList;
  }

  Future<ShoesModel> GetMalebyId(int id) async {
    final data = await http.rootBundle.loadString("assets/json/men_shoes.json");
    final MalList = ShoesModel().ShoesModelFromJson(data);
    final shoemale = MalList.firstWhere((shoemale) => shoemale.id == id);
    return shoemale;
  }

  Future<ShoesModel> GetFemalbyId(int id) async {
    final data =
        await http.rootBundle.loadString("assets/json/women_shoes.json");
    final FemalList = ShoesModel().ShoesModelFromJson(data);
    final shoefemal = FemalList.firstWhere((shoefemal) => shoefemal.id == id);

    return shoefemal;
  }

  Future<ShoesModel> GetKidsbyId(int id) async {
    final data =
        await http.rootBundle.loadString("assets/json/kids_shoes.json");
    final KidsList = ShoesModel().ShoesModelFromJson(data);
    final shoeKids = KidsList.firstWhere((shoeKids) => shoeKids.id == id);

    return shoeKids;
  }
}
