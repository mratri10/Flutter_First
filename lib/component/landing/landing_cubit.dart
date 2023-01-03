import 'package:flutter_bloc/flutter_bloc.dart';

class LandingCubit extends Cubit<String> {
  LandingCubit() : super("HOME");

  void changePage(String page) async {
    emit(page);
  }
}
