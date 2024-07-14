// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataM _$DataMFromJson(Map<String, dynamic> json) {
  return _DataM.fromJson(json);
}

/// @nodoc
mixin _$DataM {
  String? get color =>
      throw _privateConstructorUsedError; // @Default('600x600')
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMCopyWith<DataM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMCopyWith<$Res> {
  factory $DataMCopyWith(DataM value, $Res Function(DataM) then) =
      _$DataMCopyWithImpl<$Res, DataM>;
  @useResult
  $Res call({String? color, int? year});
}

/// @nodoc
class _$DataMCopyWithImpl<$Res, $Val extends DataM>
    implements $DataMCopyWith<$Res> {
  _$DataMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataMImplCopyWith<$Res> implements $DataMCopyWith<$Res> {
  factory _$$DataMImplCopyWith(
          _$DataMImpl value, $Res Function(_$DataMImpl) then) =
      __$$DataMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? color, int? year});
}

/// @nodoc
class __$$DataMImplCopyWithImpl<$Res>
    extends _$DataMCopyWithImpl<$Res, _$DataMImpl>
    implements _$$DataMImplCopyWith<$Res> {
  __$$DataMImplCopyWithImpl(
      _$DataMImpl _value, $Res Function(_$DataMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? year = freezed,
  }) {
    return _then(_$DataMImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataMImpl extends _DataM {
  const _$DataMImpl({this.color, this.year}) : super._();

  factory _$DataMImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataMImplFromJson(json);

  @override
  final String? color;
// @Default('600x600')
  @override
  final int? year;

  @override
  String toString() {
    return 'DataM(color: $color, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataMImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataMImplCopyWith<_$DataMImpl> get copyWith =>
      __$$DataMImplCopyWithImpl<_$DataMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataMImplToJson(
      this,
    );
  }
}

abstract class _DataM extends DataM {
  const factory _DataM({final String? color, final int? year}) = _$DataMImpl;
  const _DataM._() : super._();

  factory _DataM.fromJson(Map<String, dynamic> json) = _$DataMImpl.fromJson;

  @override
  String? get color;
  @override // @Default('600x600')
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$DataMImplCopyWith<_$DataMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
