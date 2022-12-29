import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GpProjectSuperAdminFirebaseUser {
  GpProjectSuperAdminFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GpProjectSuperAdminFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GpProjectSuperAdminFirebaseUser>
    gpProjectSuperAdminFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<GpProjectSuperAdminFirebaseUser>(
          (user) {
            currentUser = GpProjectSuperAdminFirebaseUser(user);
            return currentUser!;
          },
        );
