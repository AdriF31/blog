import 'package:blog/ui/auth/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (c) => Scaffold(
              appBar: AppBar(
                title: const Text('Register'),
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
                          prefixIcon: const Icon(
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
                      controller: c.nameController,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'name',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: c.emailController,
                      decoration: InputDecoration(
                          focusColor: Colors.green,
                          hintText: 'email',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
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
                        c.doRegister(
                            c.nameController.text,
                            c.emailController.text,
                            c.usernameController.text,
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
                          'Register',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
