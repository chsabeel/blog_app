import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/custom_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/page_route.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In.',
                style: TextStyle(fontSize: 57, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              AuthField(hintText: "Email", controller: emailController),
              SizedBox(height: 12),
              AuthField(
                hintText: "Password",
                controller: passwordController,
                isobscured: true,
              ),
              SizedBox(height: 25),
              AuthGradientButton(buttonText: "Sign In", ontap: () {}),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MyCustomPageRoute(page: SignUp()));
                },
                child: RichText(
                  text: TextSpan(
                    text: " Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "SignUp",
                        style: TextStyle(
                          color: Pallete.gradient2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
