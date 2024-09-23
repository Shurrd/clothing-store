import 'package:clothing_store/components/basic_app_bar.dart';
import 'package:clothing_store/components/my_button.dart';
import 'package:clothing_store/components/my_input_field.dart';
import 'package:clothing_store/core/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BasicAppBar(title: "Login"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                MyInputField(
                  hintText: "Enter your email",
                  controller: _emailController,
                ),
                const SizedBox(height: 24),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                MyInputField(
                  hintText: "Enter your password",
                  controller: _passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                MyButton(onPressed: () {}, text: "Login")
              ],
            ),
            const SizedBox(height: 28),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(width: 14),
                Text("Or Login With"),
                SizedBox(width: 14),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black45,
                ))
              ],
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.facebook,
                      ),
                      const SizedBox(width: 32),
                      const Text("Facebook",
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.google,
                      ),
                      const SizedBox(width: 24),
                      const Text("Google", style: TextStyle(fontSize: 16))
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.apple,
                      ),
                      const SizedBox(width: 24),
                      const Text("Apple", style: TextStyle(fontSize: 16))
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
