import 'package:flutter/material.dart';

class RouteError extends StatelessWidget {
  const RouteError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Route Error'),
        ),
      ),
    );
  }
}
