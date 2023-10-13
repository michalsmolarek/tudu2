import 'package:flutter/material.dart';
import 'package:tudu/core/translations/extensions/localization_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          context.t.ok,
        ),
      ),
    );
  }
}
