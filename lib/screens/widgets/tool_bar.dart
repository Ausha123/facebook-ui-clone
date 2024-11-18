import 'package:flutter/material.dart';

class toolbar extends StatelessWidget {
  const toolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 50, right: 5),
      // padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            "facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.messenger,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
