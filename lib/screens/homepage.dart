import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Widget Explain"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Text Widget"),
                const Text(
                  "Hello World",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Icon Widget"),
                const Icon(
                  Icons.add_reaction_rounded,
                  color: Colors.red,
                  size: 50,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Filled Button"),
                FilledButton(
                    onPressed: () {
                      Logger().e("Printed");
                    },
                    child: const Text("Print Now")),
                const SizedBox(
                  height: 15,
                ),
                const Text("Outlined Button"),
                OutlinedButton(onPressed: () {}, child: const Text("Sign In")),
                const SizedBox(
                  height: 15,
                ),
                const Text("Elevated Button"),
                ElevatedButton(onPressed: () {}, child: const Text("Sign Up")),
                const SizedBox(
                  height: 15,
                ),
                const Text("Text Field"),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Text("This is a Row"),
                    Icon(Icons.access_alarm_sharp)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Network Image"),
                Image.network(
                  "https://img.freepik.com/free-photo/luxurious-car-parked-highway-with-illuminated-headlight-sunset_181624-60607.jpg?size=626&ext=jpg&ga=GA1.1.1448711260.1706572800&semt=sph",
                  height: 150,
                  width: 150,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Asset Image"),
                Image.asset(
                  'assets/images/tree-image.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Container"),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken),
                          fit: BoxFit.cover,
                          image: const NetworkImage(
                            'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
                          )),
                      color: Colors.deepOrange,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Car",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Publish New Car",
                          style: TextStyle(color: Colors.grey.shade300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
