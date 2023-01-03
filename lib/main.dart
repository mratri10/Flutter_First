import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/activity/activity_cubit.dart';
import 'package:nityo_temp/component/activity/activity_entity.dart';
import 'package:nityo_temp/component/activity/add_activity.dart';
import 'package:nityo_temp/component/edit_profile/edit_profile.dart';
import 'package:nityo_temp/component/landing/landing_screen.dart';
import 'package:nityo_temp/component/profile/profile_cubit.dart';
import 'package:nityo_temp/data_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DataCubit(),
        ),
        BlocProvider(
          create: (context) => PasswordHandleCubit(),
        ),
        BlocProvider(create: (context) => ActivityCubit()..getData()),
        BlocProvider(create: (context) => ActivityAddCubit()),
        BlocProvider(create: (context) => ActivityDeleteCubit()),
        BlocProvider(create: (context) => ActivityUpdateCubit())
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => LandingScreen(),
          '/edit-profile': (context) => EditProfileScreen(),
          '/tambah-aktivitas': ((context) {
            final arguments = (ModalRoute.of(context)?.settings.arguments ??
                <String, dynamic>{}) as ActivityEntity;
            return AddActivity(
              id:arguments.id??0,
              judul: arguments.judul?? "",
              deskripsi: arguments.deskripsi ?? "",
              waktu: arguments.waktu ?? "",
            );
          })
        },
      ),
    );
  }
}
