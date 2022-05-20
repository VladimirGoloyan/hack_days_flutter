import 'package:flutter/material.dart';

class DashBoardMobile extends StatelessWidget {
  const DashBoardMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        backgroundColor: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsetsDirectional.only(top: 40),
          children: [
            ListTile(
                leading: Icon(
                  Icons.swap_vertical_circle_outlined,
                  size: 60,
                  color: Colors.white,
                ),
                title: Text('')),
            ListTile(
              leading: Icon(
                Icons.account_tree_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: const Text('GoDrive',
                  textScaleFactor: 2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.mail_outline,
                size: 30,
                color: Colors.white,
              ),
              title: const Text('Mail',
                  textScaleFactor: 2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.manage_accounts_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: const Text('Profile',
                  textScaleFactor: 2, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      appBar: new AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(
              Icons.apps,
              size: 35,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  const Icon(
                    Icons.account_tree_outlined,
                    color: Colors.blueAccent,
                    size: 70,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'GoDrive',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "Collaborate, synchronize and share documents with other users.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent)),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.mail_outline,
                    color: Colors.blueAccent,
                    size: 70,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Mail',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "Send messages and files to individuals through secure email links.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent)),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.manage_accounts_outlined,
                    color: Colors.blueAccent,
                    size: 70,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      "View your profile and keep your details up to date.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent)),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
