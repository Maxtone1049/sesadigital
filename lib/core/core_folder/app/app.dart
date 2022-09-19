import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../main.dart';
import '../../../screens/sign_in/views/login/middle_ware/contracts/login_contract_impl.dart';
import '../../../screens/sign_in/views/login/middle_ware/repository/logi_repo_impl.dart';
import '../../api_folder/auth_api.dart';
import '../manager/session_manager.dart';
import '../network/networt_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnBoardingPage, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: AuthApi),
    LazySingleton(classType: AuthContractsImpl),
    LazySingleton(classType: AuthRepoImpl),
    
  ],
  logger: StackedLogger(),
)
class App {}
