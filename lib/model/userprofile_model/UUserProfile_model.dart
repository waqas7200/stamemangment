import 'package:firebase_auth/firebase_auth.dart';

class UserprofileModel {
  final String uid;
  final String name;
  final String email;
  final String phone;
 UserprofileModel({
   required this.uid,
   required this.name,
   required this.email,
   required this.phone,
 });
 factory UserprofileModel.fromMap(Map<String, dynamic>map){
   return UserprofileModel(
       uid: map['uid']??'',
       name: map['name']??'',
       email: map['email']??'',
       phone: map['phone']??''
   );
 }
}