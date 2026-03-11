import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


import '../../../model/userprofile_model/UUserProfile_model.dart';

class AuthService
{
  final _auth=FirebaseAuth.instance;
  final _dbref=FirebaseFirestore.instance;

  Future<User?> SignIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return result.user;
    } catch (e) {
      print("Login Error: $e");
      return null;
    }
  }

  Future<UserprofileModel?> SignUP(String email,String password,String name,String phone)async{
    UserCredential result= await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password);
    User? user=result.user;
    if(user != null){
      await _dbref.collection('user').doc(user.uid).set({
        "uid": user.uid,
        "email": email,
        "name": name,
        "phoneNumber":phone ,
      });
      return UserprofileModel(
        uid:  user.uid,
        name: name,
        email: email,
        phone: phone,
      );
    }

  }

  Future<void> SignOut(String email,String password)async{
    return await _auth.signOut();
  }


}