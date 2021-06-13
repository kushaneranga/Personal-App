import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      icon: Icon(Icons.assignment),
                    ),
                  ),
                  Container(
                    height: 52.0,
                    child: Tab(
                      icon: Icon(Icons.perm_contact_cal),
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
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/my_avatar.jpg'),
                            fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
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
                        fontSize: 16.0,
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
                shrinkWrap: false,
                padding: const EdgeInsets.only(top: 30.0,),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      "Details",
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
                  ListTile(
                    leading: Icon(Icons.accessibility),
                    title: Text("Name with initials:"),
                    subtitle: Text("S A K E Maheepala"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined),
                    title: Text("Full Name:"),
                    subtitle: Text("Sammu Arachchige Kushan Eranga Maheepala"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text("Date of Birth:"),
                    subtitle: Text("22-07-1998"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.male),
                    title: Text("Sex:"),
                    subtitle: Text("Male"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.workspaces_filled),
                    title: Text("Religion:"),
                    subtitle: Text("Buddhist"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.assistant_navigation),
                    title: Text("Nationality:"),
                    subtitle: Text("Sinhalese"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.wc),
                    title: Text("Civil Status:"),
                    subtitle: Text("Single"),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Location:"),
                    subtitle: Text("Colombo, Sri Lanka, Earth."),
                    trailing: Icon(Icons.arrow_drop_down_outlined),
                  ),
                  Divider(),
                ],
              ),
            ),
            Container(
              color: Colors.black87,
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                padding: const EdgeInsets.only(top: 30.0,),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      "Contact",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white54,
                    thickness: 0.0,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.white70,
                    ),
                    title: Text(
                      "kushan.maheepala@gmail.com",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                    ),
                    // On Tab link
                    onTap: () async {
                      const url = 'mailto:kushan.maheepala@gmail.com?subject=Personal App';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // On Tab link End
                  ),
                  Divider(color: Colors.white70,),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white70,
                    ),
                    title: Text(
                      "+94-76-111-2345",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                    ),
                    // On Tab link
                    onTap: () async {
                      String telephoneUrl = "tel:+94761112345";
                      if (await canLaunch(telephoneUrl)) {
                        await launch(telephoneUrl);
                      } else {
                        throw "Can't phone that number.";
                      }
                    },
                    // On Tab link End
                  ),
                  Divider(color: Colors.white70,),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white70,
                    ),
                    title: Text(
                      "GitHub | kushaneranga",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                    ),
                    // On Tab link
                    onTap: () async {
                      const url = 'https://github.com/kushaneranga';
                      if (await canLaunch(url)) {
                        await launch(url, forceWebView: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // On Tab link End
                  ),
                  Divider(color: Colors.white70,),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white70,
                    ),
                    title: Text(
                      "Linkedln | Kushan Eranga",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                    ),
                    // On Tab link
                    onTap: () async {
                      const url = 'https://www.linkedin.com/in/kushan-eranga-9a813717b';
                      if (await canLaunch(url)) {
                        await launch(url, forceWebView: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // On Tab link End
                  ),
                  Divider(color: Colors.white70,),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white70,
                    ),
                    title: Text(
                      "Follow @KEranaga ",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        color: Colors.white70,
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                    ),
                    // On Tab link
                    onTap: () async {
                      const url = 'https://twitter.com/Kushan98';
                      if (await canLaunch(url)) {
                        await launch(url, forceWebView: true);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    // On Tab link End
                  ),
                  Divider(color: Colors.white70,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}