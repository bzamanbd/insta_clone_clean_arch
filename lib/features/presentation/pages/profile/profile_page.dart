import 'package:flutter/material.dart';

import '../../../../consts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text('Elena'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: primaryColor,
            ),
            splashRadius: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  profileAvatarWidget(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customNumberOfPostFollowersFollowingWidget(
                        numberText: '2',
                        labelText: 'Posts',
                      ),
                      sizeHor(20),
                      customNumberOfPostFollowersFollowingWidget(
                        numberText: '45',
                        labelText: 'Followers',
                      ),
                      sizeHor(20),
                      customNumberOfPostFollowersFollowingWidget(
                        numberText: '35',
                        labelText: 'Following',
                      ),
                    ],
                  ),
                ],
              ),
              sizeVer(10),
              const Text(
                'Elena',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizeVer(10),
              const Text(
                'This is bio section of the user',
                style: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
              sizeVer(10),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (_, index) {
                  return customGridItem();
                },
                itemCount: 32,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget profileAvatarWidget({backgroundImage}) => CircleAvatar(
        radius: 26,
        backgroundColor: secondaryColor,
        backgroundImage: backgroundImage,
      );
  Widget customNumberOfPostFollowersFollowingWidget({
    required String numberText,
    required String labelText,
  }) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            numberText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          Text(labelText,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: secondaryColor,
              )),
        ],
      );

  Widget customGridItem() => Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          color: secondaryColor,
        ),
      );
}
