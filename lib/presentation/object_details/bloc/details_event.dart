part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.fetchObjectDetails({required String id}) = _FetchObjectDetails;
  const factory DetailsEvent.deleteObject({required String id}) = _DeleteObject;

}