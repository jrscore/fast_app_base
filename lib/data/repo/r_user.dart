import 'package:coredex_pms/core/exceptions/exception_handler.dart';
import 'package:coredex_pms/domain/entity/user_info.dart';
import 'package:coredex_pms/domain/service_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class UserService extends GetxService with ExceptionHandler{

  final _db 		 = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;
	final _colref = 'users';


  Future<void> addnew(UserInfo user) async {
    try {
      await _db.collection(_colref).doc(user.id).set(user.toJson());
    } catch (e) {
			throw handleException(e);
		}
  }

  Future<UserInfo> getUser() async {
    try {
      final documentSnapshot = await _db.collection(_colref).doc(AuthService.get.userid).get();
      if (documentSnapshot.exists) {
        return UserInfo.fromSnapshot(documentSnapshot);
      } else {
        return UserInfo.empty();
      }
    } catch (e) {
			throw handleException(e);
		}
  }

  Future<void> updateUser(UserInfo updatedUser) async {
    try {
      await _db.collection(_colref).doc(updatedUser.id).update(updatedUser.toJson());
    } catch (e) {
			throw handleException(e);
		}
  }

  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection(_colref).doc(AuthService.get.userid).update(json);
    } catch (e) {
			throw handleException(e);
		}
  }

  // Future<String> uploadImage(String path, XFile image) async {
  //   try {
  //     final ref = _storage.ref(path).child(image.name);
  //     await ref.putFile(File(image.path));
  //     final url = await ref.getDownloadURL();
  //     return url;
  //   } catch (e) {
	// 		throw handleException(e);
	// 	}
  // }

  Future<void> removeUser(String userId) async {
    try {
      await _db.collection(_colref).doc(userId).delete();
    } catch (e) {
			throw handleException(e);
		}
	}
}