//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../view/source/routes/routes_screen.dart';
//
// class AuthController extends GetxController{
//
//   TextEditingController emailcontroller=TextEditingController();
//   TextEditingController passwordcontroller=TextEditingController();
//   TextEditingController email2controller=TextEditingController();
//   TextEditingController passwo2rdcontroller=TextEditingController();
//   var isloading=false.obs;
//   SignUp()async{
//
//     try
//     {
//       isloading.value=true;
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: emailcontroller.text.trim(),
//           password: passwordcontroller.text.trim(),
//
//       );Get.snackbar('Success', 'Account successfully created');
//       Get.offAllNamed(AppsRoutes.homeScreen);
//     }
//     //on FirebaseAuthException catch (e) {
//       //String displayMessage = '';
//
//       // Firebase ke asli codes ye hain:
//     //   switch (e.code) {
//     //     case 'email-already-in-use':
//     //       displayMessage = 'Ye email pehle se register hai.';
//     //       break;
//     //     case 'invalid-email':
//     //       displayMessage = 'Email ka format durust nahi hai.';
//     //       break;
//     //     case 'weak-password':
//     //       displayMessage = 'Password bohat kamzor hai (kam az kam 6 characters).';
//     //       break;
//     //     case 'user-not-found':
//     //       displayMessage = 'Is email par koi account nahi mila.';
//     //       break;
//     //     case 'wrong-password':
//     //       displayMessage = 'Aap ne galat password dala hai.';
//     //       break;
//     //     case 'network-request-failed':
//     //       displayMessage = 'Internet ka masla hai, dobara koshish karein.';
//     //       break;
//     //     default:
//     //       displayMessage = e.message ?? 'Ek anjaan error aya hai.';
//     //   }
//     //
//     //   Get.snackbar(
//     //     'Auth Error',
//     //     displayMessage,
//     //     snackPosition: SnackPosition.BOTTOM,
//     //     backgroundColor: Colors.redAccent,
//     //     colorText: Colors.white,
//     //     margin: EdgeInsets.all(10),
//     //   );
//     // }
//     on FirebaseException catch(e){
//       String messege;
//       if(e.code=='email-already-in-use'){
//         messege='This email is already used by another account';
//       }
//       else  if(e.code=='Invalid-email'){
//         messege='Invalid email account';
//       }
//       else
//         {
//           messege='some thing went wrong';
//         }
//       // Get.snackbar('sign up falied', messege);\
//       Get.snackbar('Login Failed', messege,
//         //snackPosition: SnackPosition.BOTTOM,
//         //backgroundColor: Colors.red.withOpacity(0.7),
//         colorText: Colors.black,
//       );
//     }
//     catch(e)
//     {
//       Get.snackbar('Error', 'Unexpected error occur');
//     }
//     finally
//   {
//     isloading.value=false;
//   }
//
//   }
//   Login()async{
//
//     try
//     {
//       isloading.value=true;
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: emailcontroller.text.trim(),
//           password: passwordcontroller.text.trim(),
//
//       );Get.snackbar('Success', 'Account successfully created');
//       Get.offAllNamed(AppsRoutes.homeScreen);
//     }on FirebaseException catch(e){
//       String messege;
//       if(e.code=='email_already_in_use'){
//         messege='This email is already used by another account';
//       }
//       else  if(e.code=='Invalid_email'){
//         messege='Invalid email account';
//       }
//     }
//     catch(e)
//     {
//       Get.snackbar('Error', 'Unexpected error occur');
//     }
//     finally
//   {
//     isloading.value=false;
//   }
//
//   }
//   @override
//   void onClose() {
//     emailcontroller.clear();
//     passwordcontroller.clear();
//     super.onClose();
//   }
//
// }


//=========================================================>

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:statemanagment/view/utills/error_messages/snackbars-.dart';
// import 'package:statemanagment/view/utills/exceptions/firebase-auth-exception.dart';
// import '../../view/source/routes/routes_screen.dart';
// // Apni exception file ko yahan import karein
// // import 'path_to_your_exception_file/firebase_exceptions.dart';
//
// class AuthController extends GetxController {
//   TextEditingController emailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();
//
//   var isloading = false.obs;
//
//   // Global Snackbar Method (Code repeat na karne ke liye)
//   void showErrorSnackbar(String message) {
//     Get.snackbar(
//       'Auth Error',
//       message,
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.redAccent,
//       colorText: Colors.white,
//       margin: const EdgeInsets.all(10),
//     );
//   }
//
//   SignUp() async {
//     try {
//       isloading.value = true;
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailcontroller.text.trim(),
//         password: passwordcontroller.text.trim(),
//       );
//       Get.snackbar('Success', 'Account successfully created');
//       Get.offAllNamed(AppsRoutes.homeScreen);
//     } catch (e) {
//       // Yahan global class use ho rahi hai
//       String errorMessage = FirebaseExceptionHandler.getErrorMessage(e);
//       showErrorSnackbar(errorMessage);
//     } finally {
//       isloading.value = false;
//     }
//   }
//
//   Login() async {
//     try {
//       if(emailcontroller.text=='' || passwordcontroller.text=='')
//         return AppSnackBar.shoeWarningSnackbar('Watning', 'Please fill all the fileds');
//       isloading.value = true;
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailcontroller.text.trim(),
//         password: passwordcontroller.text.trim(),
//       );
//       AppSnackBar.shoeSuccessSnackbar('Success', 'Login successfully');
//       //Get.snackbar('Success', 'Login Successful');
//       Get.offAllNamed(AppsRoutes.homeScreen);
//     } catch (e) {
//       // Yahan bhi wahi global logic
//       String errorMessage = FirebaseExceptionHandler.getErrorMessage(e);
//       showErrorSnackbar(errorMessage);
//     } finally {
//       isloading.value = false;
//     }
//   }
//
//   @override
//   void onClose() {
//     emailcontroller.dispose(); // clear ki jagah dispose zyada behtar hai
//     passwordcontroller.dispose();
//     super.onClose();
//   }
// }


//===========================================>


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:statemanagment/data/services/auth-services.dart';
// import 'package:statemanagment/view/utills/error_messages/snackbars-.dart';
// import 'package:statemanagment/view/utills/exceptions/firebase-auth-exception.dart';
// import '../../view/source/routes/routes_screen.dart';
//
// class AuthController extends GetxController {
//   // Service ka instance
//   final AuthService _authService = AuthService();
//
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   var isLoading = false.obs;
//
//   // Sign Up Method
//   Future<void> signUp() async {
//     if (_validateInputs()) {
//       try {
//         isLoading.value = true;
//         await _authService.signUp(
//           emailController.text.trim(),
//           passwordController.text.trim(),
//         );
//         AppSnackBar.shoeSuccessSnackbar('Success', 'Account successfully created');
//         Get.offAllNamed(AppsRoutes.homeScreen);
//       } catch (e) {
//         String errorMessage = FirebaseExceptionHandler.getErrorMessage(e);
//         _showErrorSnackbar(errorMessage);
//       } finally {
//         isLoading.value = false;
//       }
//     }
//   }
//
//   // Login Method
//   Future<void> login() async {
//     if (_validateInputs()) {
//       try {
//         isLoading.value = true;
//         await _authService.login(
//           emailController.text.trim(),
//           passwordController.text.trim(),
//         );
//         AppSnackBar.shoeSuccessSnackbar('Success', 'Login successfully');
//         Get.offAllNamed(AppsRoutes.homeScreen);
//       } catch (e) {
//         String errorMessage = FirebaseExceptionHandler.getErrorMessage(e);
//         _showErrorSnackbar(errorMessage);
//       } finally {
//         isLoading.value = false;
//       }
//     }
//   }
//
//   // Validation Logic
//   bool _validateInputs() {
//     if (emailController.text.isEmpty || passwordController.text.isEmpty) {
//       AppSnackBar.shoeWarningSnackbar('Warning', 'Please fill all the fields');
//       return false;
//     }
//     return true;
//   }
//
//   // Private Snackbar helper
//   void _showErrorSnackbar(String message) {
//     Get.snackbar(
//       'Auth Error',
//       message,
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.redAccent,
//       colorText: Colors.white,
//     );
//   }
//
//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/data/services/auth-services.dart';

import '../../data/services/auth_service/auth_service_.dart';

class AuthController extends GetxController{
 final AuthService _authService=AuthService();

 final emai=TextEditingController();
 final password=TextEditingController();
 var loading=false.obs;

  Future<void>login()async{
    loading.value=true;
    try{
     await _authService.SignIn(emai.text,password.text);
    }catch(e){
     Get.snackbar('errro', 'sdkfcknKJ.DNX.KZSN');
    }
    finally{
      loading.value=false;
    }
  }

  Future<void>signup()async{
    try{

    }catch(e){
      
    }

  }
}