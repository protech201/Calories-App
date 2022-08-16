

import 'db_helper.dart';

class PlayerModel{
  int? id;
  String? name;
  String? address;
  String? phone;
  String? age;
  String? height;
  String? weight;
  String? calDay;

  PlayerModel({
    required this.name,
    required this.address,
    required this.phone,
    required this.height,
    required this.age,
    required this.weight,
    required this.calDay,

});

  PlayerModel.fromMap(Map<String,dynamic> map){
    id = map[DbHelper.IdColumName];
    name = map[DbHelper.NameColumName];
    address = map[DbHelper.AddressColumName];
    phone = map[DbHelper.PhoneColumName];
    age = map[DbHelper.AgeColumName];
    weight = map[DbHelper.WeightColumName];
    height = map[DbHelper.HeightColumName];
    calDay = map[DbHelper.CalDayColumName];
  }

  Map<String,dynamic> toMap(){
    return{
      DbHelper.NameColumName:name,
      DbHelper.AddressColumName:address,
      DbHelper.PhoneColumName:phone,
      DbHelper.AgeColumName:age,
      DbHelper.WeightColumName:weight,
      DbHelper.HeightColumName:height,
      DbHelper.CalDayColumName:calDay,
    };
  }
}