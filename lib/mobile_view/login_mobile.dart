import 'package:flutter/material.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              const Image(image: AssetImage('images/goanywhere.png')),
              const SizedBox(height: 10),
              const Text(
                'The HelpSystems File Transfer Client for GoAnywhere MFT providess you with the ability to perform ad-hoc file transfers and file sharing',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'https://'),
                ),
              ),
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
        ),
      ),
    );
  }
}
