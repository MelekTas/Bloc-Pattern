import 'package:bloc_pattern_kullanimi/data/repo/matematik_repostory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfaCubit extends Cubit<int> {
  AnaSayfaCubit() : super(0);
  var mRepo=MatematikRepostory();

  void toplamaYap(sayi1, sayi2) {
    
    emit(mRepo.toplamaYap(sayi1, sayi2));
  }
 void carpmaYap(sayi1, sayi2) {
    
    emit(mRepo.carpmaYap(sayi1, sayi2));
  }




}
