import 'dart:async';
import 'package:flutter_hooks/flutter_hooks.dart';

int useCounter(
    {int initialValue = 0, Duration interval = const Duration(seconds: 1)}) {
  final counter = useState(initialValue);

  useEffect(() {
    final timer = Timer.periodic(interval, (_) {
      counter.value++;
    });

    return timer.cancel;
  }, []);

  return counter.value; // 👈 Return the value, not the notifier
}
