import 'package:flutter/widgets.dart';
import 'package:user_profile/features/app/bloc/app_bloc.dart';
import 'package:user_profile/features/home/view/home_page.dart';
import 'package:user_profile/features/login/view/login_page.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}
