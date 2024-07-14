import 'package:auto_route/auto_route.dart';
import 'package:bloc_exam/presentation/object_details/bloc/details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ObjectDetailScreen extends StatelessWidget {
  const ObjectDetailScreen({super.key, required this.objectId});
  final String objectId;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DetailsBloc>(context)
        .add(DetailsEvent.fetchObjectDetails(id: objectId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Object Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _showDeleteConfirmationDialog(context),
          ),
        ],
      ),
      body: BlocConsumer<DetailsBloc, DetailsState>(
        listener: (context, state) {
          state.maybeWhen(
            deleted: (obj) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(obj.message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (_, state) => state.when(
          initial: () => const Center(child: Text('Please wait...')),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (object) {
            return Center(child: Text(object.name));
          },
          deleted: (object) => Center(child: Text(object.message)),
          error: (message) => Center(child: Text(message)),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this object?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                context.router.back();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context
                    .read<DetailsBloc>()
                    .add(DetailsEvent.deleteObject(id: objectId));
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
