import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nityo_temp/component/activity/activity_entity.dart';
import 'package:nityo_temp/database.dart';
import 'package:sqflite/sqflite.dart';
part 'activity_cubit.freezed.dart';

class ActivityAddCubit extends Cubit<ActivityState> {
  ActivityAddCubit() : super(ActivityState.isLoading());

  Future<void> addData(ActivityEntity data) async {
    emit(ActivityState.isLoading());
    DBHelper dbHelper = DBHelper();
    int add = await dbHelper.insert(data);
    emit(ActivityState.isAddLoaded(add));
  }
}

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityState.isLoading());

  Future<void> getData() async {
    DBHelper dbHelper = DBHelper();
    final Future<Database> dbFuture = dbHelper.initDB();
    dbFuture.then((db) {
      Future<List<ActivityEntity>> listAktivitas = dbHelper.getAktivitasList();
      listAktivitas.then((list) => {
            emit(ActivityState.isListLoaded(list)),
          });
    });
  }
}

class ActivityDeleteCubit extends Cubit<ActivityState> {
  ActivityDeleteCubit() : super(ActivityState.isLoading());

  Future<void> deleteData(ActivityEntity data) async {
    emit(ActivityState.isLoading());
    DBHelper dbHelper = DBHelper();
    int delete = await dbHelper.delete(data);
    emit(ActivityState.isDeleteLoaded(delete));
  }
}

class ActivityUpdateCubit extends Cubit<ActivityState> {
  ActivityUpdateCubit() : super(ActivityState.isLoading());

  Future<void> updateData(ActivityEntity data) async {
    emit(ActivityState.isLoading());
    DBHelper dbHelper = DBHelper();
    int update = await dbHelper.update(data);
    emit(ActivityState.isUpdateLoaded(update));
  }
}

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.isLoading() = _LoadingState;
  const factory ActivityState.isLoaded(ActivityEntity data) = _LoadedState;
  const factory ActivityState.isAddLoaded(int add) = _LoadedAddState;
  const factory ActivityState.isListLoaded(List<ActivityEntity> dataList) =
      _LoadedListState;
  const factory ActivityState.isDeleteLoaded(int delete) = _LoadedDeleteState;
  const factory ActivityState.isUpdateLoaded(int update) = _LoadedUpdateState;
  const factory ActivityState.error(String error) = _ErrorState;
  const factory ActivityState.isEmpty() = _EmptyState;
}

extension ActivityStateExtension on ActivityState {
  bool get isLoadingState => this is _LoadingState;
  bool get isLoadedState => this is _LoadedState;
  bool get isLoadedAddState => this is _LoadedAddState;
  bool get isErrorState => this is _ErrorState;
  bool get isEmptyState => this is _EmptyState;
  bool get isListLoadedState => this is _LoadedListState;
  bool get isDeleteLoadedState => this is _LoadedDeleteState;
  bool get isUpdateLoadedState => this is _LoadedUpdateState;
  String? get errorMessage => mapOrNull(error: (value) => value.error);
  ActivityEntity? get data => mapOrNull(isLoaded: (value) => value.data);
  int? get add => mapOrNull(isAddLoaded: (value) => value.add);
  int? get delete => mapOrNull(isDeleteLoaded: (value) => value.delete);
  int? get update => mapOrNull(isUpdateLoaded: (value) => value.update);
  List<ActivityEntity>? get dataList =>
      mapOrNull(isListLoaded: (value) => value.dataList.reversed.toList());
}
