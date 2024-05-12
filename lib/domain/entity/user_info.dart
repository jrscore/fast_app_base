import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coredex_pms/core/util/formmatter.dart';


class UserInfo {
  final String id;
  final String username;
  final String email;
  String phone;
  String profilePicture;

  UserInfo({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.profilePicture,
  });

  String get phoneNo  => Formatter.phoneNumber(phone);

  static UserInfo empty() => UserInfo(id: '', username: '', email: '', phone: '', profilePicture: '');

  Map<String, dynamic> toJson() => {
      'Username': username,
      'Email': email,
      'PhoneNumber': phone,
      'ProfilePicture': profilePicture,
    };

  factory UserInfo.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    if (doc.data() != null) {
      final data = doc.data()!;
      return UserInfo(
        id: doc.id,
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        phone: data['PhoneNumber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      return UserInfo.empty();
    }
  }
}