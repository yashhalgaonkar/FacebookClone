import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class UserCard extends StatelessWidget {
  final User currentUser;

  const UserCard({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: currentUser.imageUrl,
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          currentUser.name,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
