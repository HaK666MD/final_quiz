import 'package:bloc/bloc.dart';
import 'package:bloc_exam/config/di/locator.dart';
import 'package:bloc_exam/data/repositoty/object_repository.dart';
import 'package:bloc_exam/domain/model/object/object_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_event.dart';
part 'object_state.dart';
part 'object_bloc.freezed.dart';

class ObjectBloc extends Bloc<ObjectEvent, ObjectState> {
  ObjectBloc() : super(const ObjectState.initial()) {
    on<_FetchObjects>((event, emit) async {
      emit(const ObjectState.loading());
      try {
        final objects = await getIt<ObjectRepository>().getObjects();
        emit(ObjectState.loaded(objects));
      } catch (e) {
        emit(const ObjectState.error('Failed to fetch objects'));
      }
    });
  }
}
