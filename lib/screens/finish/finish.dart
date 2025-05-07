import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moodbeat/screens/finish/finish_button.dart';
import 'package:moodbeat/screens/finish/finish_header.dart';

class Finish extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          SizedBox(height: 100),
          FinishHeader(),
          Spacer(),
          FinishButton(),
        ],
      ),
    );
  }
}
