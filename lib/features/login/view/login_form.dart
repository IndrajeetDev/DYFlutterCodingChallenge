import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/features/login/cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            top: (MediaQuery.of(context).size.height) * 0.4,
            bottom: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Join today",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            _GoogleSignInButton(),
            SizedBox(
              height: 30.0,
            ),
            _EmailSignInButton()
          ],
        ),
      ),
    );
  }
}

class _EmailSignInButton extends StatelessWidget {
  const _EmailSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('This feature is in development'),
          ),
        ),
        child: const Center(
          child: Text(
            "Sign up with Email",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextButton(
        onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
        child: const Center(
          child: Text(
            "Continue with Google",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
