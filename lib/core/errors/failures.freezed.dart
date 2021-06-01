// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  ServerFailure serverFailure({String message}) {
    return ServerFailure(
      message: message,
    );
  }

// ignore: unused_element
  DeviceIsOffline deviceIsOffline({String message}) {
    return DeviceIsOffline(
      message: message,
    );
  }

// ignore: unused_element
  CacheFailure cacheFailure({String message}) {
    return CacheFailure(
      message: message,
    );
  }

// ignore: unused_element
  UnknownFailure unknownFailure({String message}) {
    return UnknownFailure(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get message;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(String message),
    @required TResult deviceIsOffline(String message),
    @required TResult cacheFailure(String message),
    @required TResult unknownFailure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(String message),
    TResult deviceIsOffline(String message),
    TResult cacheFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult deviceIsOffline(DeviceIsOffline value),
    @required TResult cacheFailure(CacheFailure value),
    @required TResult unknownFailure(UnknownFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult deviceIsOffline(DeviceIsOffline value),
    TResult cacheFailure(CacheFailure value),
    TResult unknownFailure(UnknownFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ServerFailure implements ServerFailure {
  const _$ServerFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(String message),
    @required TResult deviceIsOffline(String message),
    @required TResult cacheFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(String message),
    TResult deviceIsOffline(String message),
    TResult cacheFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult deviceIsOffline(DeviceIsOffline value),
    @required TResult cacheFailure(CacheFailure value),
    @required TResult unknownFailure(UnknownFailure value),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult deviceIsOffline(DeviceIsOffline value),
    TResult cacheFailure(CacheFailure value),
    TResult unknownFailure(UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure({String message}) = _$ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith;
}

/// @nodoc
abstract class $DeviceIsOfflineCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $DeviceIsOfflineCopyWith(
          DeviceIsOffline value, $Res Function(DeviceIsOffline) then) =
      _$DeviceIsOfflineCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$DeviceIsOfflineCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $DeviceIsOfflineCopyWith<$Res> {
  _$DeviceIsOfflineCopyWithImpl(
      DeviceIsOffline _value, $Res Function(DeviceIsOffline) _then)
      : super(_value, (v) => _then(v as DeviceIsOffline));

  @override
  DeviceIsOffline get _value => super._value as DeviceIsOffline;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(DeviceIsOffline(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$DeviceIsOffline implements DeviceIsOffline {
  const _$DeviceIsOffline({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.deviceIsOffline(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceIsOffline &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DeviceIsOfflineCopyWith<DeviceIsOffline> get copyWith =>
      _$DeviceIsOfflineCopyWithImpl<DeviceIsOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(String message),
    @required TResult deviceIsOffline(String message),
    @required TResult cacheFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return deviceIsOffline(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(String message),
    TResult deviceIsOffline(String message),
    TResult cacheFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceIsOffline != null) {
      return deviceIsOffline(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult deviceIsOffline(DeviceIsOffline value),
    @required TResult cacheFailure(CacheFailure value),
    @required TResult unknownFailure(UnknownFailure value),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return deviceIsOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult deviceIsOffline(DeviceIsOffline value),
    TResult cacheFailure(CacheFailure value),
    TResult unknownFailure(UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceIsOffline != null) {
      return deviceIsOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceIsOffline implements Failure {
  const factory DeviceIsOffline({String message}) = _$DeviceIsOffline;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $DeviceIsOfflineCopyWith<DeviceIsOffline> get copyWith;
}

/// @nodoc
abstract class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(CacheFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$CacheFailure implements CacheFailure {
  const _$CacheFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CacheFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $CacheFailureCopyWith<CacheFailure> get copyWith =>
      _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(String message),
    @required TResult deviceIsOffline(String message),
    @required TResult cacheFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(String message),
    TResult deviceIsOffline(String message),
    TResult cacheFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult deviceIsOffline(DeviceIsOffline value),
    @required TResult cacheFailure(CacheFailure value),
    @required TResult unknownFailure(UnknownFailure value),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult deviceIsOffline(DeviceIsOffline value),
    TResult cacheFailure(CacheFailure value),
    TResult unknownFailure(UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure({String message}) = _$CacheFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $CacheFailureCopyWith<CacheFailure> get copyWith;
}

/// @nodoc
abstract class $UnknownFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(
          UnknownFailure value, $Res Function(UnknownFailure) then) =
      _$UnknownFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(
      UnknownFailure _value, $Res Function(UnknownFailure) _then)
      : super(_value, (v) => _then(v as UnknownFailure));

  @override
  UnknownFailure get _value => super._value as UnknownFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UnknownFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UnknownFailure implements UnknownFailure {
  const _$UnknownFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknownFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknownFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UnknownFailureCopyWith<UnknownFailure> get copyWith =>
      _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverFailure(String message),
    @required TResult deviceIsOffline(String message),
    @required TResult cacheFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return unknownFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverFailure(String message),
    TResult deviceIsOffline(String message),
    TResult cacheFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownFailure != null) {
      return unknownFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverFailure(ServerFailure value),
    @required TResult deviceIsOffline(DeviceIsOffline value),
    @required TResult cacheFailure(CacheFailure value),
    @required TResult unknownFailure(UnknownFailure value),
  }) {
    assert(serverFailure != null);
    assert(deviceIsOffline != null);
    assert(cacheFailure != null);
    assert(unknownFailure != null);
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverFailure(ServerFailure value),
    TResult deviceIsOffline(DeviceIsOffline value),
    TResult cacheFailure(CacheFailure value),
    TResult unknownFailure(UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure({String message}) = _$UnknownFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $UnknownFailureCopyWith<UnknownFailure> get copyWith;
}
