import 'package:bloc_exam/config/network/constant.dart';
import 'package:bloc_exam/domain/model/message/message_model.dart';
import 'package:bloc_exam/domain/model/object/object_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'object_api.g.dart';

@lazySingleton
@RestApi(baseUrl: baseUrl)
abstract class ObjectApi {
  @factoryMethod
  factory ObjectApi(Dio dio) = _ObjectApi;

  @GET(EndPoints.objects)
  Future<List<ObjectM>> getObjects();

  @GET(EndPoints.object)
  Future<ObjectM> getObject(@Path('id') String id);

  @DELETE(EndPoints.object)
  Future<MessageM> deleteObject(@Path('id') String id);
}