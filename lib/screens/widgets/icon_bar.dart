import 'package:flutter/material.dart';
import 'package:widget_explain_app/screens/facebook.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const TabIcon(
            icon: Icons.home,
          ),
          const TabIcon(
            icon: Icons.people,
          ),
          const TabIcon(
            icon: Icons.ondemand_video_outlined,
          ),
          const TabIcon(
            icon: Icons.notifications,
          ),
          Container(
            width: 30,
            height: 30,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(profilePic),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade700,
                      radius: 6,
                      child: const Icon(
                        Icons.menu,
                        size: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
