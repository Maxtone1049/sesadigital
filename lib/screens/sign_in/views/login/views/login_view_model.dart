import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../core/core_folder/app/app.locator.dart';
import '../../../../../core/core_folder/app/app.router.dart';
import '../../../entity/login_entity/login_entity.dart';
import '../middle_ware/repository/logi_repo_impl.dart';

class LoginViewModel extends BaseViewModel{


  final BuildContext context;

  LoginViewModel(this.context);

  final navigate = locator<NavigationService>();
  final repositoryImply = AuthRepoImpl();

  final formKey = GlobalKey<FormState>();

  Future<void> loginUser(LoginEntity entity) async {
    try {
      await runBusyFuture(repositoryImply.login(entity), throwException: true);
      await navigate.replaceWith(Routes.dashboard);
    } catch (e) {
      // logger.e(e);
      // AppUtils.snackbar(context, message: e.toString(), error: true);
    }
  }
}