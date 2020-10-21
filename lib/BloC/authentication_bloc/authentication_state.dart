import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  AuthenticationState([List props = const []]) : super(props);
}

class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';
}

class Authenticated extends AuthenticationState {
  final String displayName;

  Authenticated(this.displayName) : super([displayName]);

  @override
  String toString() => 'Authenticated {displayNmae : $displayName}';
}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';
}
