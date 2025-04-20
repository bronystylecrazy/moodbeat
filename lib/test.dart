import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/core/hooks/counter_hook.dart';

class Test extends HookWidget {
  const Test({super.key});
  @override
  Widget build(BuildContext context) {
    print("Rerender");
    final counter = useCounter(interval: Duration(milliseconds: 100));
    return Text(
      'Counter: $counter',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}
