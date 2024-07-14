import 'package:bloc_exam/config/di/locator.dart';
import 'package:bloc_exam/data/api/objects/object_api.dart';
import 'package:bloc_exam/domain/model/message/message_model.dart';
import 'package:bloc_exam/domain/model/object/object_model.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@injectable
class ObjectRepository {
  Future<List<ObjectM>> getObjects() async {
    try {
      return await getIt<ObjectApi>().getObjects();
    } on DioException catch (dioError) {
      throw Exception('Dio error while fetching objects: ${dioError.message}');
    } catch (e) {
      throw Exception('Failed to fetch objects: $e');
    }
  }

  Future<ObjectM> getObjectById(String id) async {
    try {
      return await getIt<ObjectApi>().getObject(id);
    } on DioException catch (dioError) {
      throw Exception('Dio error while fetching object by ID: ${dioError.message}');
    } catch (e) {
      throw Exception('Failed to fetch object by ID: $e');
    }
  }

  Future<MessageM> deleteObjectById(String id) async {
    try {
      return await getIt<ObjectApi>().deleteObject(id);
    } on DioException catch (dioError) {
      throw Exception('Dio error while fetching object by ID: ${dioError.message}');
    } catch (e) {
      throw Exception('Failed to fetch object by ID: $e');
    }
  }
}
