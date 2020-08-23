import 'package:chatapp/presentation/home/home_page_model.dart';
import 'package:chatapp/presentation/top/top_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //投稿データ一覧
    return ChangeNotifierProvider<HomePageModel>(
      create: (_) => HomePageModel()..init(),
      child: Consumer<TopPageModel>(builder: (context, model, child) {
        return Container(
          child: Text('Looding'),
        );
      }),
    );
  }
}
