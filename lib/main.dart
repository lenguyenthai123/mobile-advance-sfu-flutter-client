import 'package:flutter/material.dart';
import 'package:flutter_sfu_video_call/src/lang/translation_service.dart';
import 'package:flutter_sfu_video_call/src/routes/app_pages.dart';
import 'package:flutter_sfu_video_call/src/shared/logger/logger_utils.dart';
import 'package:flutter_sfu_video_call/src/theme/theme_service.dart';
import 'package:flutter_sfu_video_call/src/theme/themes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    enableLog: true,
    logWriterCallback: Logger.write,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    locale: TranslationService.locale,
    fallbackLocale: TranslationService.fallbackLocale,
    translations: TranslationService(),
    theme: Themes().lightTheme,
    darkTheme: Themes().darkTheme,
    themeMode: ThemeService().getThemeMode(),
  ));
}
