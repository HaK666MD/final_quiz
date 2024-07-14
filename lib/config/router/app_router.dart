import 'package:auto_route/auto_route.dart';
import 'package:bloc_exam/presentation/object/screen/objects_screen.dart';
import 'package:bloc_exam/presentation/object_details/screen/object_details_screen.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ObjectsRoute.page, initial: true),
        AutoRoute(page: ObjectDetailRoute.page),
      ];
}
