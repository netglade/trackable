import 'package:trackable/src/error_id_service.dart';
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
        errorId: ErrorIdService.get(),
        trackingId: trackingId,
      );

  @override
  String toString() => 'TrackableError(error: $error, errorId: $errorId, trackingId: $trackingId)';
}
