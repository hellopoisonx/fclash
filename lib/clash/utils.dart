import 'package:flutter/foundation.dart';

Future<R> invoke<R>(R Function() callback) async {
  return await compute((_) => callback(), null);
}
