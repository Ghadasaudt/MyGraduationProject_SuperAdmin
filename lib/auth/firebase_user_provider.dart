import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CountMeInSuperAdminFirebaseUser {
  CountMeInSuperAdminFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CountMeInSuperAdminFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CountMeInSuperAdminFirebaseUser>
    countMeInSuperAdminFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<CountMeInSuperAdminFirebaseUser>(
          (user) {
            currentUser = CountMeInSuperAdminFirebaseUser(user);
            return currentUser!;
          },
        );
