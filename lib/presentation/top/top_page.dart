import 'package:chatapp/presentation/add_post/addpost_page.dart';
import 'package:chatapp/presentation/home/home_page.dart';
import 'package:chatapp/presentation/mypage/mypage.dart';
import 'package:chatapp/presentation/top/top_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopPage extends StatelessWidget {
  final List<Widget> _children = [HomePage(), MyPage(), AddPostPage()];
  final List<String> _tabNames = ["ホーム", "景品交換", "マイページ"];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TopPageModel>(
      create: (_) => TopPageModel()..init(),
      child: Consumer<TopPageModel>(builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(_tabNames[model.currentIndex]),
          ),
          body: _children[model.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: model.onTapTapped,
            currentIndex: model.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(_tabNames[0]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text(_tabNames[1]),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face),
                title: Text(_tabNames[2]),
              ),
            ],
          ),
        );
      }),
    );
  }
}
