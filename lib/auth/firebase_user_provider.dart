import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WapitiCarFirebaseUser {
  WapitiCarFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WapitiCarFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WapitiCarFirebaseUser> wapitiCarFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WapitiCarFirebaseUser>(
      (user) {
        currentUser = WapitiCarFirebaseUser(user);
        return currentUser!;
      },
    );
