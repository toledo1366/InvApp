import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/base/cubit_base.dart';
import '../../infrastructure/base/state_base.dart';
import '../../models/inventarization.dart';

part 'inventarizations_cubit.freezed.dart';
part 'inventarizations_state.dart';

class InventarizationsCubit extends CubitBase<InventarizationsState>{
  InventarizationsCubit() : super(const InventarizationsState.dataLoading());

  void init() {
    List<Inventarization> data = [];
     emit(InventarizationsState.dataLoaded(data));
  }
}