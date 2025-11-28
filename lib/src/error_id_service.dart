import 'package:meta/meta.dart';
import 'package:nanoid2/nanoid2.dart';

abstract final class ErrorIdService {
  /// Recommended length is 8.
  ///
  /// With length 8 there is 1% probability of collision during ~99 days for 1000 Ids per hour.
  ///
  /// See https://zelark.github.io/nano-id-cc
  /// .
  // ignore: avoid-global-state, globally visible.
  static int errorIdLength = 8;

  static const String _alphabet = '123456789ABCDEFGHIJKLMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz';

  static String? _mockedErrorId;

  const ErrorIdService._();

  @visibleForTesting
  // Ignored since the method is for testing purpose and should not be used as setter
  // ignore: use_setters_to_change_properties
  static void mockErrorId(String? errorId) => _mockedErrorId = errorId;

  /// Creates a unique `errorId`.
  static String get() {
    return _mockedErrorId ?? nanoid(length: errorIdLength, alphabet: _alphabet);
  }
}
