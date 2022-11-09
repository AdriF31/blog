import 'package:blog/ui/auth/login/login_controller.dart';
import 'package:blog/ui/auth/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (c) => Scaffold(
              appBar: AppBar(
                title: Text('Login'),
              ),
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: c.usernameController,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'username',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: c.passwordController,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'password',
                          prefixIcon: const Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        c.doLogin(c.usernameController.text,
                            c.passwordController.text);
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => RegisterPage()),
                      child: Text(
                        'REGISTER',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
