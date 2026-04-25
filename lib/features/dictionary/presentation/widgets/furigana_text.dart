import 'package:flutter/material.dart';
import 'package:ruby_text/ruby_text.dart';

class FuriganaText extends StatelessWidget {
  const FuriganaText({
    required this.text,
    this.reading,
    this.style,
    this.rubyStyle,
    this.maxLines,
    this.overflow,
    super.key,
  });

  final String text;
  final String? reading;
  final TextStyle? style;
  final TextStyle? rubyStyle;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final normalizedReading = reading?.trim();
    if (normalizedReading == null || normalizedReading.isEmpty || normalizedReading == text) {
      return Text(
        text,
        style: style,
        maxLines: maxLines,
        overflow: overflow,
      );
    }

    return RubyText(
      [
        RubyTextData(
          text,
          ruby: normalizedReading,
        ),
      ],
      style: style,
      rubyStyle: rubyStyle,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
