import 'package:coredex_pms/app/app_state.dart';
import 'package:coredex_pms/data/memory/todo_holder.dart';
import 'package:coredex_pms/data/repo/r_checkform.dart';
import 'package:coredex_pms/data/repo/r_site.dart';
import 'package:coredex_pms/present/auth/login/state.dart';
import 'package:coredex_pms/domain/use_case/provider_meta.dart';
import 'package:coredex_pms/present/site/c_sitelist.dart';
import 'package:coredex_pms/domain/use_case/provider_net.dart';
import 'package:coredex_pms/data/repo/r_meta.dart';
import 'package:coredex_pms/domain/service_auth.dart';
import 'package:coredex_pms/data/repo/r_user.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  
	@override void dependencies() {

    /// -- Core
		Get.put(AppState());
    Get.put(NetProvider());
		Get.put(AuthService());
		Get.put(UserService());
		Get.put(MetaRepository());
		Get.put(SiteRepository());
		Get.put(CheckFormRepository());



    /// State
		Get.lazyPut(() => TodoData());
		Get.lazyPut(() => SiteController());
		Get.lazyPut(() => MetaProvider());
		Get.lazyPut(() => LoginState());


    /// -- Util
    // Get.put(AddressController());
  }
}
