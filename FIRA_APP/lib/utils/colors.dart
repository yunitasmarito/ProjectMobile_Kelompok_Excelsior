import 'package:flutter/material.dart';
import 'dart:ui';

const primaryColor = const Color(0xFFfbab66);
const primaryLight = const Color(0xFFFF9F59);
const primaryDark = const Color(0xFFFF9F59);

const secondaryColor = const Color(0xFFFF9F59);
const secondaryLight = const Color(0xFFFF9F59);
const secondaryDark = const Color(0xFFFF9F59);

const Color gradientStart = const Color(0xFFfbab66);
const Color gradientEnd = const Color(0xFF0000);

const primaryGradient = const LinearGradient(
  colors: const [Color(0xffff0000), Color(0xFFfbab66)],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const chatBubbleGradient = const LinearGradient(
  colors: const [Color(0xffff0000), Color(0xFFfbab66)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const chatBubbleGradient2 = const LinearGradient(
  colors: const [Color(0xFFf4e3e3), Color(0xFFf4e3e3)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
