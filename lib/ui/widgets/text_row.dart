// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/shared/text_styles.dart';


class TextRow extends StatelessWidget {
  String suffix;
  String prefix;
  TextStyle? suffixStyle;
  TextStyle? prefixStyle;

   TextRow({
    required this.prefix,
    required this.suffix,
    this.prefixStyle,
    this.suffixStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(prefix, style: prefixStyle ?? p),
        Text(suffix, style: suffixStyle ?? h3),
      ],
    );
  }
}
