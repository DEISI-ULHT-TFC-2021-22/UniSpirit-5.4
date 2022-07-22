import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthException implements Exception {
  String message;

  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  AuthService();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> registrar(String email, String senha) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: senha)
          .then((value) {
        login(email, senha);
        _auth.currentUser?.updateDisplayName(email.split('@')[0]);
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('A senha é muito fraca!');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException('Este email já se encontra registado');
      }
    }
  }

  Future<void> login(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _reloadUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('Email não encontrado. Registe-se.');
      } else if (e.code == 'wrong-password') {
        throw AuthException('Senha incorreta. Tente novamente');
      }
    }
  }

  Future<void> _reloadUser() async {
    return _auth.currentUser?.reload();
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
