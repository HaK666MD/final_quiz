part of 'object_bloc.dart';

@freezed
class ObjectEvent with _$ObjectEvent {
  const factory ObjectEvent.fetchObjects() = _FetchObjects;
}