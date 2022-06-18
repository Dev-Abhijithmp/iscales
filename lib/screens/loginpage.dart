import 'package:flutter/material.dart';
import 'package:iscales/keys.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoginForm(context),
    );
  }
}

Widget _buildLoginForm(BuildContext context) {
  return Form(
    key: KeyClass.formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
            filled: true,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            filled: true,
          ),
          obscureText: true,
        ),
        ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ],
    ),
  );
}
