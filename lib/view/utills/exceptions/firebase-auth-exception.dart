import 'package:firebase_auth/firebase_auth.dart';

class FirebaseExceptionHandler {
  static String getErrorMessage(dynamic e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'email-already-in-use':
          return 'Ye email pehle se register hai.';
        case 'invalid-email':
          return 'Email ka format durust nahi hai.';
        case 'weak-password':
          return 'Password bohat kamzor hai (kam az kam 6 characters).';
        case 'user-not-found':
          return 'Is email par koi account nahi mila.';
        case 'wrong-password':
          return 'Aap ne galat password dala hai.';
        case 'user-disabled':
          return 'Ye user block kar diya gaya hai.';
        case 'network-request-failed':
          return 'Internet ka masla hai, dobara koshish karein.';
        case 'too-many-requests':
          return 'Bohat zyada koshishein ki gayi hain, thori dair baad try karein.';
        default:
          return e.message ?? 'Ek anjaan error aya hai.';
      }
    }
    return 'Unexpected error occur: ${e.toString()}';
  }
}