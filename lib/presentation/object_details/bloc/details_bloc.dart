import 'package:bloc/bloc.dart';
import 'package:bloc_exam/config/di/locator.dart';
import 'package:bloc_exam/data/repositoty/object_repository.dart';
import 'package:bloc_exam/domain/model/message/message_model.dart';
import 'package:bloc_exam/domain/model/object/object_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {

  DetailsBloc() : super(const _Initial()) {

    on<_FetchObjectDetails>((event, emit) async {
      emit(const DetailsState.loading());
      try {
        final ObjectM object = await getIt<ObjectRepository>().getObjectById(event.id);
        emit(DetailsState.loaded(object));
      } catch (e) {
        emit(const DetailsState.error('Failed to load object details'));
      }
    });

    on<_DeleteObject>((event, emit) async {
      try {
        final MessageM object = await getIt<ObjectRepository>().deleteObjectById(event.id);
        emit(DetailsState.deleted(object));
      } catch (e) {
        emit(const DetailsState.error('Failed to load object details'));
      }
    });
  }

  
}
