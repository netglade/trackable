import 'package:trackable/src/general_trackable_error.dart';
import 'package:trackable/src/generate_error_id.dart';
import 'package:trackable/src/tracking_id.dart';

extension GeneralTrackableErrorExtensions on Object {
  GeneralTrackableError asGeneralTrackableError({
    required TrackingId trackingId,
    String? errorId,
  }) =>
      GeneralTrackableError(
        error: this,
        errorId: errorId ?? generateErrorId(),
        trackingId: trackingId,
      );
}
