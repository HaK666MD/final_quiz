part of 'object_bloc.dart';

@freezed
class ObjectState with _$ObjectState {
  const factory ObjectState.initial() = _Initial;
  const factory ObjectState.loading() = _Loading;
  const factory ObjectState.loaded(List<ObjectM> objects) = _Loaded;
  const factory ObjectState.error(String message) = _Error;
}
