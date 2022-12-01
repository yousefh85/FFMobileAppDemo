import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MobileAccessDemoFirebaseUser {
  MobileAccessDemoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MobileAccessDemoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MobileAccessDemoFirebaseUser> mobileAccessDemoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MobileAccessDemoFirebaseUser>(
      (user) {
        currentUser = MobileAccessDemoFirebaseUser(user);
        return currentUser!;
      },
    );
