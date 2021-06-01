import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure implements Exception {
  const factory Failure.serverFailure({String message}) = ServerFailure;
  const factory Failure.deviceIsOffline({String message}) = DeviceIsOffline;
  const factory Failure.cacheFailure({String message}) = CacheFailure;
  const factory Failure.unknownFailure({String message}) = UnknownFailure;
}
