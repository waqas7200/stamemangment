import 'package:firebase_auth/firebase_auth.dart';

class AuthService
{
  final _auth=FirebaseAuth.instance;

  Future<UserCredential> SignIn(String email,String password)async{
    return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password
    );
  }

  Future<UserCredential> SignUP(String email,String password)async{
    return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
    );
  }

  Future<void> SignOut(String email,String password)async{
    return await _auth.signOut();
  }


}