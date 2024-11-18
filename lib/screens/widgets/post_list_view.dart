import 'package:flutter/material.dart';
import 'package:widget_explain_app/models/post_model.dart';
import 'package:widget_explain_app/screens/facebook.dart';

class PostListview extends StatelessWidget {
  PostListview({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  List<PostModel> posts = [
    PostModel(
        post:
            "https://plus.unsplash.com/premium_photo-1686090449200-57266c6623a6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        time: "7h",
        caption: "Beautiful View!",
        userImage:
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        uid: "100",
        userName: "Taylor Swift",
        type: "Updated Cover Photo"),
    PostModel(
        post:
            "https://plus.unsplash.com/premium_photo-1686090449200-57266c6623a6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        time: "7h",
        caption: "Beautiful View!",
        userImage:
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        uid: "100",
        userName: "Taylor Swift",
        type: "Updated Cover Photo"),
    PostModel(
        post:
            "https://plus.unsplash.com/premium_photo-1686090449200-57266c6623a6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        time: "7h",
        caption: "Beautiful View!",
        userImage:
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        uid: "100",
        userName: "Taylor Swift",
        type: "Updated Cover Photo")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(posts[index].userImage),
                          ),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              height: 0.8,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          posts[index].type,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              posts[index].time,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  height: 0.8),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.public,
                              color: Colors.grey.shade700,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Text(
                posts[index].caption,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Image(image: NetworkImage(posts[index].post)),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1.2k",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "800 Comments",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "2 Shares",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const Divider(
                thickness: 0.2,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButton(
                    icon: Icons.thumb_up_alt_outlined,
                    text: "Like",
                  ),
                  ActionButton(
                    icon: Icons.comment,
                    text: "Comment",
                  ),
                  ActionButton(
                    icon: Icons.reply,
                    text: "Share",
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.shade800,
                height: 50,
                thickness: 5,
              )
            ],
          );
        });
  }
}
