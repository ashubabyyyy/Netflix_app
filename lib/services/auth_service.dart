// import 'package:firebase_auth/firebase_auth.dart';

// // yo chai lekhnai parxa
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // who is logged in right now

//   User  ? get currentUser => _auth.currentUser;

//   // listen to login/logout changes automatically
//   Stream<User?> get authStateChanges => _auth.authStateChanges();

//   //Register
//   Future<User?> register(String email, String password) async {
//     final result = await _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return result.user;
//   }

//   //Login
//   Future<User?> login(String email, String password) async {
//     final result = await _auth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return result.user;
//   }
//   //Logout

//   Future<void> resetPassword(String email) =>
//       _auth.sendPasswordResetEmail(email: email);
// }
