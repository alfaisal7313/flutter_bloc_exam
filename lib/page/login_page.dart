import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_exam/auth/auth_bloc.dart';
import 'package:flutter_bloc_exam/auth/auth_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to our page!'),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(LoginEvent());
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
