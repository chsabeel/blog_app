import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:blog_app/features/auth/data/domain/presentation/pages/signin_page.dart';
import 'package:blog_app/features/auth/data/domain/presentation/widgets/auth_gradient_button.dart';
import 'package:blog_app/features/auth/data/domain/presentation/widgets/custom_field.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
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
                'Sign Up.',
                style: TextStyle(fontSize: 57, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              CustomField(hintText: "Name", controller: nameController),
              SizedBox(height: 12),
              CustomField(hintText: "Email", controller: emailController),
              SizedBox(height: 12),
              CustomField(
                hintText: "Password",
                controller: passwordController,
                isobscured: true,
              ),
              SizedBox(height: 25),
              AuthGradientButton(
                buttonText: "Sign Up",
                ontap: ()  {
                },
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: " All ready have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "SignIn",
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
