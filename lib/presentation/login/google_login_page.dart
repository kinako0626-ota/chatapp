import 'package:chatapp/presentation/login/google_login_model.dart';
import 'package:chatapp/presentation/top/top_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final mailController = TextEditingController();
    final passwordController = TextEditingController();

    return ChangeNotifierProvider<GoogleLoginModel>(
      create: (_) => GoogleLoginModel(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ログイン'),
        ),
        body: Consumer<GoogleLoginModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: mailController,
                    decoration: InputDecoration(
                      hintText: 'example@examle.com',
                    ),
                    onChanged: (text) {},
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'パスワードを入力してください',
                    ),
                    onChanged: (text) {},
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text('ログインする'),
                      onPressed: () async {
                        //TODO:押した後の条件分岐
                        try {
                          //TOP画面へ画面遷移
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TopPage(),
                            ),
                          );
                        } catch (e) {
                          //エラー
                          _showTextDialog(context, e.toString());
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

_showTextDialog(context, message) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
