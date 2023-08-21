import 'package:flutter/cupertino.dart';

class UserGridModel {
  @required String name;
  @required String description;
  @required int harga;
  @required String imageUrl;

  UserGridModel(
    this.name,
    this.description,
    this.harga,
    this.imageUrl,
  );
}
