import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataM with _$DataM {
  const DataM._();
  const factory DataM({
    String? color,// @Default('600x600') 
    int? year,
  }) = _DataM;

  factory DataM.fromJson(Map<String, dynamic> json) => _$DataMFromJson(json);

}
