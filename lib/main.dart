import 'package:flutter/material.dart';
import 'login.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),backgroundColor: Colors.orangeAccent),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String title = 'Hallo Guys';
  String desc = ':D';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[


            Image.asset('assets/images/doge.jpg',height: 100, width: 200,),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Masukan User Name',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),

            ),
            Container(
                child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if(nameController.text == 'Fadhli' && passwordController.text == 'FadhliFirda'){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Menu(
                                  title: title,
                                  desc: desc,
                                )
                            )
                        );
                      }
                      print(nameController.text);
                      print(passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,)
                )
            ),
          ],
        ));
  }
}