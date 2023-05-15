import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_data_on/core/extensions/context_extensions.dart';
import 'package:mini_project_data_on/core/utils/constants.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:mini_project_data_on/feature/login/presentation/pages/login_page.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_bloc.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_event.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/pages/university_page.dart';
import 'package:mini_project_data_on/injector.dart';
import 'package:mini_project_data_on/shared/flash/presentation/blocs/cubit/flash_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UniversityBloc>()
            ..add(const UniversityEvent.loadUniversitys()),
        ),
        BlocProvider(
          create: (context) => getIt<FlashCubit>(),
        ),
      ],
      child: BlocListener<FlashCubit, FlashState>(
        listener: (context, state) {
          state.when(
            disappeared: () => null,
            appeared: (message) => context.showSnackbar(
              message: message,
            ),
          );
        },
        child: MaterialApp(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          title: 'Universitys App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginPage(),
        ),
      ),
    );
  }
}
