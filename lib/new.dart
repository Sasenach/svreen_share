import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key, required this.message});

  static const routeName = '/extractArguments';
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(message, style: const TextStyle(fontSize: 36),),
      ),
    );
  }
}
