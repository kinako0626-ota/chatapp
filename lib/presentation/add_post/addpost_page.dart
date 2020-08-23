import 'package:chatapp/presentation/add_post/addpost_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<AddPostModel>(
      create: (_) => AddPostModel(),
      child: Scaffold(
        body: Center(
          child: Text('ggggg'),
        ),
      ),
    );
  }
}
