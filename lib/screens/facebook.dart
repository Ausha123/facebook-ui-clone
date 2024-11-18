import 'package:flutter/material.dart';
import 'package:widget_explain_app/screens/widgets/icon_bar.dart';
import 'package:widget_explain_app/screens/widgets/post_list_view.dart';
import 'package:widget_explain_app/screens/widgets/stories_list.dart';
import 'package:widget_explain_app/screens/widgets/tool_bar.dart';

import 'widgets/new_post_bar.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FacebookHome> {
  final profilePic =
      "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const toolbar(),
            IconBar(profilePic: profilePic),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            NewPostBar(profilePic: profilePic),
            const Divider(
              color: Colors.black38,
              thickness: 10,
            ),
            StoriesListView(profilePic: profilePic),
            const Divider(
              color: Colors.black38,
              thickness: 10,
            ),
            PostListview(profilePic: profilePic)
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}

class TabIcon extends StatelessWidget {
  const TabIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 30,
    );
  }
}
