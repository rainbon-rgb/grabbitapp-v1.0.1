import 'package:cloud_firestore/cloud_firestore.dart';

class RabbitProfile {
  String? rabbitType;
  String? dateofPurchase;
  double? height;
  double? width;
  int? rabbitID;
  String? rabbitBreed;
  double? weight;
  String? id;

  RabbitProfile(
      {this.rabbitType,
      this.dateofPurchase,
      this.height,
      this.width,
      this.rabbitID,
      this.rabbitBreed,
      this.weight,
      this.id});

  RabbitProfile.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    rabbitType = data['RabbitType'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? '';
    height = data['Height'] ?? 0.0;
    width = data['Width'] ?? 0.0;
    rabbitID = data['rabbitID'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    weight = data['Weight'] ?? 0.0;
    id = documentSnapshot.id;
  }

  RabbitProfile.fromQueryDocumentSnapshot(
      {QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    rabbitType = data['RabbitType'] ?? '';
    dateofPurchase = data['DateofPurchase'] ?? '';
    height = data['Height'] ?? 0.0;
    width = data['Width'] ?? 0.0;
    rabbitID = data['rabbitID'] ?? 0;
    rabbitBreed = data['RabbitBreed'] ?? '';
    weight = data['Weight'] ?? 0.0;
    id = queryDocSnapshot.id;
  }

  RabbitProfile.fromJson(Map<String, dynamic> json) {
    rabbitType = json['RabbitType'] as String;
    dateofPurchase = json['DateofPurchase'] as String;
    height = json['Height'] as double;
    width = json['Width'] as double;
    rabbitID = json['RabbitID'] as int;
    rabbitBreed = json['RabbitBreed'] as String;
    weight = json['Weight'] as double;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['RabbitType'] = this.rabbitType;
    data['DateofPurchase'] = this.dateofPurchase;
    data['Height'] = this.height;
    data['Width'] = this.width;
    data['RabbitID'] = this.rabbitID;
    data['RabbitBreed'] = this.rabbitBreed;
    data['Weight'] = this.weight;
    data['id'] = this.id;
    return data;
  }
}
