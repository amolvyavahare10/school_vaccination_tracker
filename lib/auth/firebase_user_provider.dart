import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class VaccineTrackerFirebaseUser {
  VaccineTrackerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

VaccineTrackerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<VaccineTrackerFirebaseUser> vaccineTrackerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<VaccineTrackerFirebaseUser>(
      (user) {
        currentUser = VaccineTrackerFirebaseUser(user);
        return currentUser!;
      },
    );
