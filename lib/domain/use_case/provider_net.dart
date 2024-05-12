import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:get/get.dart';

class NetProvider extends GetxController {

  static NetProvider get instance => Get.find();

  final _conn = Connectivity();
  late StreamSubscription<ConnectivityResult> _stream;
  final _netState = ConnectivityResult.none.obs;

	// @override
	// void onInit() {
	// 	_stream = _conn.onConnectivityChanged.listen(_updateState);
	// 	super.onInit();
	// }

	// /// Update the connection status based on changes in connectivity and show a relevant popup for no internet connection.
	// Future<void> _updateState(ConnectivityResult result) async {
	// 	_netState.value = result;
	// 	if (_netState.value == ConnectivityResult.none) {
	// 		// TLoaders.warningSnackBar(title: 'No Internet Connection');
	// 	}
	// }

	// Future<bool> isConnected() async => ConnectivityResult.none == await _conn.checkConnectivity() ;
	// //   try {
	// //     final result = ;
	// //     if (result == ConnectivityResult.none) {
	// //       return false;
	// //     } else {
	// //       return true;
	// //     }
	// //   // } on PlatformException catch (_) {
	// // 	} catch (e) {
	// //     return false;
	// //   }

	// // }

	// /// Dispose or close the active connectivity stream.
	// @override
	// void onClose() {
	// 	super.onClose();
	// 	_stream.cancel();
	// }
}
