import 'package:flutter_bloc/flutter_bloc.dart';

class DataCubit extends Cubit<String> {
  DataCubit() : super("");

  void addName(String name) async {
    emit(name);
  }

}
