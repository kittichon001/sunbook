import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class GFfields extends StatelessWidget {
  String input;
  TextEditingController controller;
  GfFormFieldType gfFormFieldType;
  Color color;

  GFfields({
    Key? key,
    required this.input,
    required this.controller,
    required this.gfFormFieldType,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GfFormField(
      hintText: input,
      controller: controller,
      paddingvertical: 10,
      paddinghorizontal: 30,
      gfFormFieldType: gfFormFieldType,
      editingbordercolor: Colors.white,
      idlebordercolor: color,
      borderwidth: 5,
    );
  }
}
