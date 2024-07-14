// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageM _$MessageMFromJson(Map<String, dynamic> json) {
  return _MessageM.fromJson(json);
}

/// @nodoc
mixin _$MessageM {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageMCopyWith<MessageM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMCopyWith<$Res> {
  factory $MessageMCopyWith(MessageM value, $Res Function(MessageM) then) =
      _$MessageMCopyWithImpl<$Res, MessageM>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageMCopyWithImpl<$Res, $Val extends MessageM>
    implements $MessageMCopyWith<$Res> {
  _$MessageMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageMImplCopyWith<$Res>
    implements $MessageMCopyWith<$Res> {
  factory _$$MessageMImplCopyWith(
          _$MessageMImpl value, $Res Function(_$MessageMImpl) then) =
      __$$MessageMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MessageMImplCopyWithImpl<$Res>
    extends _$MessageMCopyWithImpl<$Res, _$MessageMImpl>
    implements _$$MessageMImplCopyWith<$Res> {
  __$$MessageMImplCopyWithImpl(
      _$MessageMImpl _value, $Res Function(_$MessageMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageMImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageMImpl implements _MessageM {
  const _$MessageMImpl({required this.message});

  factory _$MessageMImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageMImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'MessageM(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageMImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageMImplCopyWith<_$MessageMImpl> get copyWith =>
      __$$MessageMImplCopyWithImpl<_$MessageMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageMImplToJson(
      this,
    );
  }
}

abstract class _MessageM implements MessageM {
  const factory _MessageM({required final String message}) = _$MessageMImpl;

  factory _MessageM.fromJson(Map<String, dynamic> json) =
      _$MessageMImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageMImplCopyWith<_$MessageMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
