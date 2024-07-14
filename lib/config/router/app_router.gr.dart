// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ObjectDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ObjectDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ObjectDetailScreen(
          key: args.key,
          objectId: args.objectId,
        ),
      );
    },
    ObjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ObjectsScreen(),
      );
    },
  };
}

/// generated route for
/// [ObjectDetailScreen]
class ObjectDetailRoute extends PageRouteInfo<ObjectDetailRouteArgs> {
  ObjectDetailRoute({
    Key? key,
    required String objectId,
    List<PageRouteInfo>? children,
  }) : super(
          ObjectDetailRoute.name,
          args: ObjectDetailRouteArgs(
            key: key,
            objectId: objectId,
          ),
          initialChildren: children,
        );

  static const String name = 'ObjectDetailRoute';

  static const PageInfo<ObjectDetailRouteArgs> page =
      PageInfo<ObjectDetailRouteArgs>(name);
}

class ObjectDetailRouteArgs {
  const ObjectDetailRouteArgs({
    this.key,
    required this.objectId,
  });

  final Key? key;

  final String objectId;

  @override
  String toString() {
    return 'ObjectDetailRouteArgs{key: $key, objectId: $objectId}';
  }
}

/// generated route for
/// [ObjectsScreen]
class ObjectsRoute extends PageRouteInfo<void> {
  const ObjectsRoute({List<PageRouteInfo>? children})
      : super(
          ObjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ObjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
