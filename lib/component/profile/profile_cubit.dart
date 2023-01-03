import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nityo_temp/component/profile/profile_entity.dart';

class ProfileCubit extends Cubit<ProfileEntity> {
  ProfileCubit() : super(ProfileEntity());

  void changeData(ProfileEntity data) async {
    emit(data);
  }
}

class PasswordHandleCubit extends Cubit<bool> {
  PasswordHandleCubit() : super(false);

  void handlePass(bool data) async {
    emit(data);
  }
}