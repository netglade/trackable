import 'package:trackable/src/general_trackable_error.dart';
import 'package:trackable/src/tracking_id.dart';
import 'package:trackable/src/tracking_id_service.dart';

extension GeneralTrackableErrorExtensions on Object {
  GeneralTrackableError asGeneralTrackableError({
    required TrackingId trackingId,
    String? errorId,
  }) =>
      GeneralTrackableError(
        error: this,
        errorId: errorId ?? TrackingIdService.createTrackingId(),
        trackingId: trackingId,
      );
}
