import 'package:trackable/src/error_id_service.dart';
import 'package:trackable/src/trackable_error.dart';
import 'package:trackable/src/tracking_id.dart';

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
        errorId: ErrorIdService.get(),
        trackingId: trackingId,
      );
}
