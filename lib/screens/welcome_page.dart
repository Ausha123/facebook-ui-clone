import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 150,
                  color: Colors.amber,
                ),
                const Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "The [overflow] property's behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, the glyph causing overflow, and those that follow, will not be rendered.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.grey.shade800)),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    FilledButton(
                        onPressed: () {}, child: const Text("Sign Up")),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButton(
                  text: 'Continue With Google',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButton(
                  text: 'Continue With Facebook',
                  bgColor: Colors.green,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButton(
                  text: 'Continue With Facebook',
                  bgColor: Colors.red,
                ),
                const SizedBox(
                  height: 15,
                ),
                Chip(
                  label: const Text("Fruits"),
                  deleteIcon: const Icon(
                    Icons.close,
                    size: 15,
                  ),
                  onDeleted: () {},
                ),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 100,
                  backgroundImage: NetworkImage(
                    'https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-File.png',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color bgColor;

  const CustomButton({
    super.key,
    required this.text,
    this.bgColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Logger().e("Clicked");
      },
      child: Container(
        width: 240,
        height: 45,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_pin,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
