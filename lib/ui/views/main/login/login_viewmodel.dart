import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/routes.gr.dart';
import '../../../../app/utils/setup_snackbar_ui.dart';
import '../../../../services/alert_service.dart';
import '../../../../app/locator.dart';
import '../../../../services/api/authentication_service.dart';

class LoginViewModel extends BaseViewModel {
  final AlertService _alertService = locator<AlertService>();
  final AuthenticationService _authController =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> login(
      {@required String email, @required String password}) async {
    UserCredential userCredential =
        await _authController.loginWithEmail(email: email, password: password);

    if (userCredential != null) {
      _alertService.showSnackbar(
        message: 'You have logged in.',
        type: SnackBarType.SUCCESS,
      );

      _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
    }
  }

  testSnackbar() {
    _alertService.showSnackbar(message: 'Test');
  }
}
