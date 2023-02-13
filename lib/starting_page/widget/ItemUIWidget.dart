import 'package:flutter/material.dart';
import 'package:flutter_app/starting_page/model/ItemModel.dart';
import 'package:flutter_svg/svg.dart';

Widget ItemUIWidget(ItemModel itemModel) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: SvgPicture.asset(itemModel.imagePath),
        title: Text(itemModel.text,
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
      ),
    ),
  );
}