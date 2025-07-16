import 'package:flutter/material.dart';
import 'package:th_speedrun/models/index.dart';

class DetailScreen extends StatelessWidget {
  final UserModel user;
  const DetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    String Function(int gender) HandleGender = (int gender) {
      if (gender == 1) {
        return 'Nam';
      } else if (gender == 2) {
        return 'Nữ';
      } else if (gender == 3) {
        return 'LGBT';
      }
      return 'Chưa chọn';
    };
    return SafeArea(
      child: Column(
        children: [
          Text(user.email),
          Text(user.name),
          Text(user.password),
          Text('${HandleGender(user.gender)}'),
          Text(
            "Thích sách: ${user.favourite['likeBook'] == true ? 'có' : 'không'}",
          ),
          Text(
            "Thích nhạc: ${user.favourite['likeMusic'] == true ? 'có' : 'không'}",
          ),
          Text(
            "Thích coi phim: ${user.favourite['likeMovie'] == true ? 'có' : 'không'}",
          ),
        ],
      ),
    );
  }
}
