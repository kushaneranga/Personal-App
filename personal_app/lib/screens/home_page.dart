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
              margin: EdgeInsets.only(
                top: 10.0,
              ),
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
                    margin: EdgeInsets.only(
                      top: 2.0,
                    ),
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
                onPressed: () {},
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
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  Container(
                    height: 52.0,
                    child: Tab(
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  Container(
                    height: 52.0,
                    child: Tab(
                      icon: Icon(Icons.details),
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
                shrinkWrap: false,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(30.0),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      "About me",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        color: Colors.cyanAccent[700],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                    child: Text(
                      "I'm Currently learning new technologies.",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 20.0,),
                    child: Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/my_avatar.jpg'),
                            fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            color: Colors.grey,
                            offset: Offset(1,3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "I am an undergraduate of Moratuwa University of Sri Lanka & following BBSc Business Science in department of Industrial Management, Faculty of Business. Studied A/L in commerce stream.",
                      maxLines: 20,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
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