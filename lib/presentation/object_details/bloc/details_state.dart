part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.loaded(ObjectM object) = _Loaded;
  const factory DetailsState.deleted(MessageM object) = _Deleted;
  const factory DetailsState.error(String message) = _Error;
}
