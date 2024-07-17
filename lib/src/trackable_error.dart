import 'package:trackable/src/generate_error_id.dart';
import 'package:trackable/src/trackable_interfaces.dart';
import 'package:trackable/src/tracking_id.dart';

class TrackableError<T> implements ITrackableError {
  final T error;

  @override
  final String errorId;

  @override
  final TrackingId trackingId;

  const TrackableError({
    required this.error,
    required this.errorId,
    required this.trackingId,
  });

  factory TrackableError.generateId({
    required T error,
    required TrackingId trackingId,
  }) =>
      TrackableError(
        error: error,
        errorId: generateErrorId(),
        trackingId: trackingId,
      );
}
