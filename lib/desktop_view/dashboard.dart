import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 1008),
            child: Container(
                height: 1000,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          constraints:
                              BoxConstraints(minWidth: 200, maxWidth: 350),
                          child: Expanded(
                              flex: 3,
                              child: Container(
                                  color: Colors.black87,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      ListTile(
                                        leading: Icon(
                                          Icons.swap_vertical_circle_outlined,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        title: Text(
                                          'GoAnywhere Desktop Client',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Card(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Colors.black87,
                                          child: ListTile(
                                            title: Text('Files',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          )),
                                      ListTile(
                                        leading: Icon(
                                          Icons.folder_outlined,
                                          color: Colors.white,
                                        ),
                                        title: Text('/ (Home)',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.transform_outlined,
                                          color: Colors.white,
                                        ),
                                        title: Text('Transfer Activity',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Card(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Colors.black87,
                                          child: ListTile(
                                            title: Text('GoDrive',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          )),
                                      ListTile(
                                        leading: Icon(
                                          Icons.folder_outlined,
                                          color: Colors.white,
                                        ),
                                        title: Text('Not Activated',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      )
                                    ],
                                  )))),
                      Expanded(
                          flex: 5,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        color: Colors.blueAccent,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                  child: Text(
                                                'Dashboard',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24),
                                              )),
                                            ),
                                            Spacer(),
                                            Expanded(
                                                child: ListTile(
                                              leading: Icon(
                                                Icons.person_outline,
                                                color: Colors.white,
                                                size: 50,
                                              ),
                                              title: Text(
                                                'anzhelika',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ))
                                          ],
                                        ))),
                                Expanded(
                                    flex: 6,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Text(
                                            'The Desktop Client provides you with the ability to perform ad-hoc file transfers and file sharing through your PC.'),
                                        const SizedBox(height: 25),
                                        GridView.count(
                                            primary: false,
                                            shrinkWrap: true,
                                            crossAxisCount: 3,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.rule_folder_outlined,
                                                    size: 128,
                                                  ),
                                                  SizedBox(
                                                      width: 150,
                                                      child: Column(children: [
                                                        Text(
                                                          'Files',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Flexible(
                                                            child: Text(
                                                                "Quickly exchange files between your desktop and the file server."))
                                                      ])),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.account_tree_outlined,
                                                    size: 128,
                                                  ),
                                                  SizedBox(
                                                      width: 150,
                                                      child: Column(children: [
                                                        Text(
                                                          'GoDrive',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Flexible(
                                                            child: Text(
                                                                "Collabrate, synchronize and share documents with other users."))
                                                      ])),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.person_outline,
                                                    size: 128,
                                                  ),
                                                  SizedBox(
                                                      width: 150,
                                                      child: Column(children: [
                                                        Text(
                                                          'Update Account',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Flexible(
                                                            child: Text(
                                                                "View your profile and keep your details up to date."))
                                                      ])),
                                                ],
                                              )
                                            ]),
                                      ],
                                    )),
                              ]))
                    ]))));
  }
}
// body: Center(
//   // Center is a layout widget. It takes a single child and positions it
//   // in the middle of the parent.
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         const SizedBox(height: 40),
//         const Image(image: AssetImage('images/goanywhere.png')),
//         const SizedBox(height: 10),
//         const Text(
//           'The HelpSystems File Transfer Client for GoAnywhere MFT providess you with the ability to perform ad-hoc file transfers and file sharing',
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 20),
//         Container(
//           margin: const EdgeInsets.only(left: 15, right: 15),
//           child: TextFormField(
//             decoration: const InputDecoration(labelText: 'https://'),
//           ),
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).pushReplacementNamed('/main');
//           },
//           style: ElevatedButton.styleFrom(
//               primary: Colors.blueAccent,
//               minimumSize: const Size.fromHeight(40)),
//           child: const Text('Next'),
//         )
//       ],
//     ),
// ),
