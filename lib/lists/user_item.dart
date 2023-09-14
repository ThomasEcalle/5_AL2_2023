import 'package:al2_2023/lists/list_user.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.user,
  });

  final ListUser user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${user.firstName} ${user.lastName}',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        user.address,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      leading: Icon(Icons.people),
      onTap: () {
        print('clicked');
      },
    );

    return Container(
      height: 100,
      color: Colors.amber.withOpacity(.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${user.firstName} ${user.lastName}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            user.address,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
