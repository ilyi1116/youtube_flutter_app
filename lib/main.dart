import 'package:flutter/material.dart';
import 'package:youtube_flutter_app/ui/VideoItem.dart';
import 'package:youtube_flutter_app/ui/app_bar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
            icon: Image.asset(
              "assets/images/home.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Trending",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
            icon: Image.asset(
              "assets/images/trending.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Subscriptions",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
            icon: Image.asset(
              "assets/images/subscriptions.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Inbox",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
            icon: Image.asset(
              "assets/images/inbox.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Library",
              style: TextStyle(
                fontSize: 11.0,
              ),
            ),
            icon: Image.asset(
              "assets/images/library.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                elevation: 8.0,
                flexibleSpace: Container(
                  child: AppBarWidget(),
                  height: 48.0,
                ),
                pinned: false,
                backgroundColor: Colors.transparent,
              ),
            ];
          },
          body: new ListView.builder(
            itemBuilder: (BuildContext context, int index) => new VideoItem(),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}