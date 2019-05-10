import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(theme: themeData,home: MyApp(),));

final ThemeData themeData = ThemeData(
 canvasColor: Colors.lightGreenAccent,
 accentColor: Colors.redAccent,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlatButton(
        onPressed: (){
          Navigator.push(context, PageTwo());
        },
        child: Text('Go to page two'),

      ),),
    );
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo() : super(builder: (context) {
    return Scaffold(
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.push(context, PageThree());
        },
        child: Text('Go to page three'),

      ),),
    );
  });



}

class PageThree extends MaterialPageRoute<Null> {
  PageThree() : super(builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Page'),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
    );
  });
}