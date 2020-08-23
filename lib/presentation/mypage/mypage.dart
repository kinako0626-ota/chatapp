import 'package:chatapp/presentation/mypage/mypage_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<MyPageModel>(
      create: (_) => MyPageModel(),
      child: Scaffold(
        body: Consumer<MyPageModel>(
          builder: (context, model, child) {
            return Container(
              color: Colors.grey,
            );
          },
        ),
      ),
    );
  }
}
