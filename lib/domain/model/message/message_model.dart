import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageM with _$MessageM {
  const factory MessageM({
    required String message,
  }) = _MessageM;

  factory MessageM.fromJson(Map<String, dynamic> json) =>
      _$MessageMFromJson(json);
}
