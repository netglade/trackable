import 'package:trackable/src/trackable_interfaces.dart';
import 'package:trackable/src/tracking_id.dart';
import 'package:uuid/uuid.dart';

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
        errorId: const Uuid().v4(),
        trackingId: trackingId,
      );
}
