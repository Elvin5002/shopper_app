import 'package:flutter/material.dart';

extension MaterialStateProperty<T> on T {
  WidgetStatePropertyAll<T> get toMspAll => WidgetStatePropertyAll<T>(this);
}