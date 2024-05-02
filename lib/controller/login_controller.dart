import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sipfupdate/utils/regex_constant.dart';

class LoginController {
  final _email = BehaviorSubject<String>.seeded('');
  final _password = BehaviorSubject<String>.seeded('');

  Stream<String> get email => _email.stream.transform(validateEmail);
  Sink<String> get sinkEmail => _email.sink;

  Stream<String> get password => _password.stream.transform(validatePassword);
  Sink<String> get sinkPassword => _password.sink;

  Stream<bool> get submitValid => Rx.combineLatest2(email, password, (e, m) => true);

  static bool isEmail(String email) {
    RegExp regExp = RegExp(RegexConstant.email);

    return regExp.hasMatch(email);
  }

  final validateEmail = StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isNotEmpty) isEmail(value) ? sink.add(value) : sink.addError('Silahkan masukkan email yang benar');
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.isNotEmpty) {
      value.length >= 8 ? sink.add(value) : sink.addError('Kata sandi harus terdiri dari 8 karakter');
    }
  });

  dispose() {
    _email.close();
    _password.close();
  }
}

final validation = LoginController();
