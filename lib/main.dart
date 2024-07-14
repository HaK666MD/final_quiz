import 'package:bloc_exam/config/di/locator.dart';
import 'package:bloc_exam/config/router/app_router.dart';
import 'package:bloc_exam/presentation/object/bloc/object_bloc.dart';
import 'package:bloc_exam/presentation/object_details/bloc/details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ObjectBloc>(
          create: (_) => ObjectBloc()..add(const ObjectEvent.fetchObjects()),
        ),
        BlocProvider<DetailsBloc>(create: (_) => DetailsBloc()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: false,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.cyan,
        ),
      ),
    );
  }
}
