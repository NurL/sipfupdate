import 'dart:async';

import 'package:rxdart/rxdart.dart';

class RegisterController {
  final _name = BehaviorSubject<String>.seeded('');
  final _email = BehaviorSubject<String>.seeded('@');
  final _password = BehaviorSubject<String>.seeded('');

  Stream<String> get name => _name.stream.transform(validateName);
  Sink<String> get sinkName => _name.sink;

  Stream<String> get email => _email.stream.transform(validateEmail);
  Sink<String> get sinkEmail => _email.sink;

  Stream<String> get password => _password.stream.transform(validatePassword);
  Sink<String> get sinkPassword => _password.sink;

  Stream<bool> get submitValid => Rx.combineLatest3(name, email, password, (n, e, m) => true);

  static bool isEmail(String email) {
    String value =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(value);

    return regExp.hasMatch(email);
  }

  final validateEmail = StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.length != 1) {
      isEmail(value) ? sink.add(value) : sink.addError('Silahkan masukkan email yang benar');
    }
  });

  final validatePassword =
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.length != 0) {
      value.length >= 8
          ? sink.add(value)
          : sink.addError('Kata sandi harus terdiri dari 8 karakter');
    }
  });

  final validateName = StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
    if (value.length != 0) {
      value.length >= 5
          ? sink.add(value)
          : sink.addError('Nama Lengkap minimal harus terdiri dari 5 karakter');
    }
  });

  dispose() {
    _email.close();
    _password.close();
  }
}

final validation = RegisterController();
