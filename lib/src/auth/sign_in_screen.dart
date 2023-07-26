import 'package:flutter/material.dart';
import '/src/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45)
                )
              ),
              child: const Column(
                children: [
                  CustomFormField(
                    icon: Icons.email,
                    label: 'Email'
                  ),
                  CustomFormField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isObscure: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}