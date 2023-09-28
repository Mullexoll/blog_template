import 'dart:ui';

import 'package:flutter/material.dart';

BoxDecoration containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(16.0),
  color: const Color.fromRGBO(255, 255, 255, 0.08),
);

ImageFilter backDropFilter = ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0);
