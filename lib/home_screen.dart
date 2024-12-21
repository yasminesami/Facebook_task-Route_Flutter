import 'package:facebook/Data/data.dart';
import 'package:facebook/Models/app_bar.dart';
import 'package:facebook/Models/create_story.dart';
import 'package:facebook/Models/home_text_field.dart';
import 'package:facebook/Models/stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<Stories> storiesList = [
      Stories(
          profileImage: 'assets/profiles/main_profile.png',
          storyImage: 'assets/stories/story1.png'),
      Stories(
          profileImage: 'assets/stories/story1.png',
          storyImage: 'assets/stories/story2.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
      Stories(
          profileImage: 'assets/stories/story2.png',
          storyImage: 'assets/stories/story3.png'),
    ];

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: HomeAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // حقل إدخال النص
              HomeTextField(),
              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CreateStory(),
                    ...List.generate(storiesList.length, (index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: storiesList[index],
                      );
                    }),
                  ],
                ),
              ),

              Divider(color: Colors.grey, height: 22, thickness: 2),

              Data.dataList.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'لا توجد منشورات لعرضها حاليًا.',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Data.dataList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Data.dataList[index];
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
