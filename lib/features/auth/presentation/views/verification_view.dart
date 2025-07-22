import 'package:flutter/material.dart';
import 'widgets/verification_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: VerificationBody(email: email)),
    );
  }
}
