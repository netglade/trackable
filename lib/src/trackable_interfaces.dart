// ignore_for_file: prefer-single-declaration-per-file, prefer-match-file-name

import 'package:trackable/src/tracking_id.dart';

interface class ITrackable {
  final String trackingId;

  const ITrackable({required this.trackingId});
}

interface class ITrackableError implements ITrackable {
  @override
  final TrackingId trackingId;

  final String errorId;

  const ITrackableError({required this.trackingId, required this.errorId});
}
