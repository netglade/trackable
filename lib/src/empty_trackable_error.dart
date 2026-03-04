import 'package:trackable/src/error_id_service.dart';
import 'package:trackable/src/trackable_interfaces.dart';
import 'package:trackable/src/tracking_id.dart';

/// Use as "error" without actual exception.
///
/// Useful for logging.
class EmptyTrackableError implements ITrackableError {
  @override
  final String errorId;

  @override
  final TrackingId trackingId;

  const EmptyTrackableError({required this.errorId, required this.trackingId});

  factory EmptyTrackableError.generateId({required TrackingId trackingId}) => EmptyTrackableError(
        errorId: ErrorIdService.get(),
        trackingId: trackingId,
      );

  @override
  String toString() => 'Empty error - ErrorId: $errorId, TrackingId: $trackingId';
}
