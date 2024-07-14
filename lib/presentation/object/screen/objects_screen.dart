import 'package:auto_route/auto_route.dart';
import 'package:bloc_exam/config/router/app_router.dart';
import 'package:bloc_exam/presentation/object/bloc/object_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ObjectsScreen extends StatelessWidget {
  const ObjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Object List')),
      body: BlocBuilder<ObjectBloc, ObjectState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Please wait...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (objects) => ListView.builder(
              itemCount: objects.length,
              itemBuilder: (context, index) {
                final object = objects[index];
                return ListTile(
                  title: Text(object.name),
                  subtitle: Text(object.data?.color ?? 'No color available'),
                  onTap: () {
                    context.pushRoute(ObjectDetailRoute(objectId: object.id));
                  },
                );
              },
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
