// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObjectMImpl _$$ObjectMImplFromJson(Map<String, dynamic> json) =>
    _$ObjectMImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      data: json['data'] == null
          ? null
          : DataM.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ObjectMImplToJson(_$ObjectMImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
    };
