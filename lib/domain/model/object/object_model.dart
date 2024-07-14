import 'package:bloc_exam/domain/model/object_data/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_model.freezed.dart';
part 'object_model.g.dart';

@freezed
class ObjectM with _$ObjectM {
  //@JsonSerializable(explicitToJson: true)
  const factory ObjectM({
    required String id,
    required String name,
    DataM? data,
  }) = _ObjectM;

  factory ObjectM.fromJson(Map<String, dynamic> json) =>
      _$ObjectMFromJson(json);
}
