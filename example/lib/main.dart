// ignore_for_file: avoid_print

import 'package:trackable/trackable.dart';

void main() {
  final trackingId = TrackingIdService.createTrackingId();

  print(trackingId);
}
