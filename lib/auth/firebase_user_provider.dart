import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class VisionTEKFirebaseUser {
  VisionTEKFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VisionTEKFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VisionTEKFirebaseUser> visionTEKFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VisionTEKFirebaseUser>(
      (user) {
        currentUser = VisionTEKFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
