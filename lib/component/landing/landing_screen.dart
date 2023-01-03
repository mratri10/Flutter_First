import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/home/home_screen.dart';
import 'package:nityo_temp/component/landing/landing_cubit.dart';
import 'package:nityo_temp/component/profile/profile_screen.dart';
import 'package:nityo_temp/widget/button_app.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // const FULL_WIDTH =
    return BlocProvider(
        create: ((context) => LandingCubit()),
        child: Scaffold(
          body: BlocBuilder<LandingCubit, String>(builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: PageLanding(state)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ButtonApp(
                            label: "Home",
                            color: state == 'HOME'
                                ? Colors.lightBlue
                                : Colors.grey,
                            onPressed: () {
                              context.read<LandingCubit>().changePage("HOME");
                            })),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ButtonApp(
                            label: "Profile",
                            color: state == 'PROFILE'
                                ? Colors.lightBlue
                                : Colors.grey,
                            onPressed: () {
                              context
                                  .read<LandingCubit>()
                                  .changePage("PROFILE");
                            })),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            );
          }),
        ));
  }
}

Widget PageLanding(String page) {
  switch (page) {
    case "PROFILE":
      return ProfileScreen();
    default:
      return HomeScreen();
  }
}
