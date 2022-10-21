part of 'inventarizations_cubit.dart';

@freezed
class InventarizationsState extends StateBase with _$InventarizationsState {
 const InventarizationsState._();

  const factory InventarizationsState.dataLoading() = _InventarizationsStateDataLoading;

  const factory InventarizationsState.dataLoaded(List<Inventarization> data) = _InventarizationsStateDataLoaded;
}