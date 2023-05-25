import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

Future NotLockScreen() async {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
// The following lines of code toggle the wakelock based on a bool value.
  bool enable = true;
// The following statement enables the wakelock.
  Wakelock.toggle(enable: enable);

  // enable = false;
// The following statement disables the wakelock.
  // Wakelock.toggle(enable: enable);

// If you want to retrieve the current wakelock status,
// you will have to be in an async scope
// to await the Future returned by `enabled`.
  // bool wakelockEnabled = await Wakelock.enabled;
}
