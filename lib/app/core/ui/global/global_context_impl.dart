// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fwc_album_app/app/core/ui/global/global_context.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/repository/auth/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class GlobalContextImpl implements GlobalContext {
  final GlobalKey<NavigatorState> _navigatorKey;
  final AuthRepository _authRepository;

  GlobalContextImpl({
    required GlobalKey<NavigatorState> navigatorKey,
    required AuthRepository authRepository,
  })  : _navigatorKey = navigatorKey,
        _authRepository = authRepository;

  @override
  Future<void> loginExpire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();

    showTopSnackBar(
      _navigatorKey.currentState!.context,
      CustomSnackBar.error(
        message: 'Login expirado',
        backgroundColor: ColorsApp.i.primary,
      ),
      overlayState: _navigatorKey.currentState!.overlay,
    );

    _navigatorKey.currentState!
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }
}
