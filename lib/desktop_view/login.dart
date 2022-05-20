import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: 500,
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 40),
                      const Image(
                          image: AssetImage('images/goanywhereDesktop.png')),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'https://',
                              labelText:
                                  "Enter the URL provided by the administrator"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText:
                                  "Enter a name for this account (Optional)"),
                        ),
                      ),
                      CheckboxListTile(
                        title: const Text("Use Windows authentication when available"),
                          controlAffinity: ListTileControlAffinity.leading,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/dashboard');
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size.fromHeight(40)),
                        child: const Text('Next'),
                      )
                    ],
                  ),
                )),
          ]),
    ));
  }
}
