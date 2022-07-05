import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ButtonController extends StatelessWidget {
  void Function() events;
  Widget child;
  Size fixedSize;
  Color color;

  ButtonController({
    Key? key,
    required this.child,
    required this.events,
    required this.fixedSize,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        side: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
        fixedSize: fixedSize,
        primary: color,
        textStyle: GoogleFonts.getFont(
          'Open Sans',
          color: const Color(0xFFDEDEDE),
          fontSize: 16,
        ),
      ),
      onPressed: events,
      child: child,
    );
  }
}
