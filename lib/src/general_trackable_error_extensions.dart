import 'package:trackable/src/error_id_service.dart';
import 'package:trackable/src/general_trackable_error.dart';
import 'package:trackable/src/tracking_id.dart';

extension GeneralTrackableErrorExtensions on Object {
  GeneralTrackableError asGeneralTrackableError({
    required TrackingId trackingId,
    String? errorId,
  }) =>
      GeneralTrackableError(
        error: this,
        errorId: errorId ?? ErrorIdService.get(),
        trackingId: trackingId,
      );
}
