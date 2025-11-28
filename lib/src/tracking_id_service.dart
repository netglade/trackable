import 'package:meta/meta.dart';
import 'package:trackable/src/tracking_id.dart';
import 'package:uuid/uuid.dart';

abstract final class TrackingIdService {
  static const _uuid = Uuid();

  static TrackingId? _trackingId;

  const TrackingIdService._();

  @visibleForTesting
  // Ignored since the method is for testing purpose and should not be used as setter
  // ignore: use_setters_to_change_properties
  static void mockTrackingId(TrackingId? arg) => _trackingId = arg;

  /// Creates a unique `trackingId`.
  static TrackingId createTrackingId() {
    return _trackingId ?? _uuid.v4();
  }
}
