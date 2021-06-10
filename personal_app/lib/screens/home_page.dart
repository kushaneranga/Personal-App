import 'package:flutter/cupertino.dart';
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(125.0),
          child: AppBar(
            centerTitle: true,
            title: Container(
              margin: EdgeInsets.only(top: 10.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.0,),
                    child: Text(
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
                  ),
                ],
              ),
            ),
            leading: Container(
              margin: EdgeInsets.only(top: 5.0, left: 10.0),
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/my_avatar.jpg'),
              ),
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
            bottom: PreferredSize(
              preferredSize: Size(52.0, 52.0),
              child: TabBar(
                indicatorColor: Colors.orange[600],
                indicatorWeight: 2.0,
                isScrollable: false,
                labelColor: Colors.orange[600],
                unselectedLabelColor: Colors.white,
                tabs: [
                  Container(
                    height: 52.0,
                    child: Tab(
                      icon: Icon(Icons.book_outlined),
                      text: 'About me',
                    ),
                  ),
                  Container(
                    height: 52.0,
                    child: Tab(icon: Icon(Icons.account_circle),),
                  ),
                  Container(
                    height: 52.0,
                    child: Tab(
                      icon: Icon(Icons.details),
                      text: 'Details',
                    ),
                  ),
                ],
              ),
            ),
            shadowColor: Colors.blue[400],
            elevation: 10.0,
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.book_outlined),
                ],
              ),
            ),
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.account_circle),
                ],
              ),
            ),
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.details),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}