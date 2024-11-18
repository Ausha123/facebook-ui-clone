import 'package:flutter/material.dart';
import 'package:widget_explain_app/models/story_model.dart';

class StoriesListView extends StatelessWidget {
  StoriesListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  final List<StoryModel> stories = [
    StoryModel(
        story: "story",
        uid: "uid",
        userImage: "userImage",
        userName: "userName"),
    StoryModel(
      story:
          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      uid: "100",
      userImage:
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      userName: "Taylor",
    ),
    StoryModel(
      story:
          "https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dmlkZW9zfGVufDB8fDB8fHww",
      uid: "100",
      userImage:
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      userName: "Jacob",
    ),
    StoryModel(
      story:
          "https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dmlkZW9zfGVufDB8fDB8fHww",
      uid: "100",
      userImage:
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      userName: "Natasha",
    ),
    StoryModel(
      story:
          "https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8dmlkZW9zfGVufDB8fDB8fHww",
      uid: "100",
      userImage:
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      userName: "Taylor",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(15)),
              width: 100,
              height: 160,
              child: index == 0
                  ? Stack(children: [
                      Container(
                        width: 100,
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            image: DecorationImage(
                                image: NetworkImage(profilePic),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 35,
                        right: 1,
                        left: 1,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Create\nStory",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))
                    ])
                  : Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(stories[index].story!),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.2),
                                      BlendMode.darken))),
                        ),
                        Positioned(
                          top: 5,
                          left: 5,
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.blue, width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(stories[index].userImage!),
                                ),
                              )),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Text(
                              stories[index].userName!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
