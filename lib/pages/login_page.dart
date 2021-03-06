import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,

        // child: Center(
        //   child: Text("login page",
        //   style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.blue,
        //     fontWeight: FontWeight.bold,
        //   ),),
        // ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: const Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("hello gorib");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
