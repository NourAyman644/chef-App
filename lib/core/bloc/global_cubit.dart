import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/services_locator.dart';
import 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  bool isArabic = false;
  String langCode = 'ar';
  void changLang(String code) async {
    emit(ChangeLangLoading());
    // isArabic = !isArabic;
    // langCode = isArabic ? 'en' : 'ar';
    langCode = code;
    await sl<CacheHelper>().cacheLanguage(code);
    emit(ChangeLangSucess());
  }

  void getCachedLang() {
    emit(ChangeLangLoading());
    final cahedLang = sl<CacheHelper>().getCachedLanguage();
    langCode = cahedLang;
    emit(ChangeLangSucess());
  }
}
