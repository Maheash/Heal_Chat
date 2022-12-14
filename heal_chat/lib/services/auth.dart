import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser() {
    return auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async{
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn();

    final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn()

    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    final AuthCredential credential= GoogleAuthProvider.credential(){
      idToken: googleSignInAuthentiacation.idToken;
      accessToken: googleSignInAuthentication.accessToken;
    };
    UserCredential result = await _firebaseAuth.signInWithCredential(credential);
    // ignore: unused_local_variable
    User? userDetails=result.user;

    if(result!=null){
      
    }

  }
}
