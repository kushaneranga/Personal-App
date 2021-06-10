import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 22.0,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
          ],
          flexibleSpace: Image.asset(
            'assets/backgroundimg.jpg',
            fit: BoxFit.cover,
          ),
          bottom: TabBar(
            indicatorColor: Colors.orange[600],
            indicatorWeight: 2.0,
            isScrollable: false,
            labelColor: Colors.orange[600],
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.account_circle),),
              Tab(icon: Icon(Icons.directions_transit),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_circle),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}