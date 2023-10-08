import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 242, 243),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 255, 205, 22),
                child: const Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.green,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  children: [
                    Text("Informe seu email:"),
                    SizedBox(
                      width: 20,
                    ),
                    Text("email"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.green,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Informe sua senha:",
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Senha",
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Login",
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Cadastro",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
