import 'package:trackable/src/trackable_error.dart';
import 'package:trackable/src/tracking_id.dart';
import 'package:uuid/uuid.dart';

class GeneralTrackableError extends TrackableError<Object> {
  const GeneralTrackableError({
    required super.error,
    required super.errorId,
    required super.trackingId,
  });

  factory GeneralTrackableError.generateId({
    required Object error,
    required TrackingId trackingId,
  }) =>
      GeneralTrackableError(
        error: error,
        errorId: const Uuid().v4(),
        trackingId: trackingId,
      );
}
