import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
          title: Text('Building Layouts with Flutter'),
          actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
              ),
          new IconButton(icon: new Icon(Icons.access_alarms),
          onPressed: (){},
          ),
          new IconButton(icon: new Icon(Icons.accessible),
          onPressed: (){},
          ),
        ],
        leading: Icon(Icons.menu)
        )
          ) ,
        body: Center(
          child: Text(
            'Hello Flutter Layouts',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: () {
            print('onPressed...');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
          )
        ],
      ),
      

      ),
    );
  }
}
