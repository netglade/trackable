// ignore_for_file: prefer-static-class

import 'package:nanoid2/nanoid2.dart';

/// Recommended length is 8.
///
/// With length 8 there is 1% probability of collision during ~99 days for 1000 Ids per hour.
///
/// See https://zelark.github.io/nano-id-cc/.
String generateErrorId({int length = 8}) => nanoid(length: length);
