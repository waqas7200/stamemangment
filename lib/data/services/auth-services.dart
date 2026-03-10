// import 'package:firebase_auth/firebase_auth.dart';
//
// class AuthService {
//   //  formate specifeirs
//   // public and private
//   // -->  if we use variable name with _ , then this wil represnent as a private
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   // Sign Up Logic
// //UserCredential  FirebaseAuth.instance.curernteruser
//   Future<UserCredential> signUp(String email, String password) async {
//     return await _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//   }
//
//   // Login Logic
//   Future<UserCredential> login(String email, String password) async {
//     return await _auth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//   }
//
//   // Sign Out
//   Future<void> logout() async {
//     await _auth.signOut();
//   }
//
//
// }