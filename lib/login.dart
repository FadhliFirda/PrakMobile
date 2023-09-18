import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  //constructor
  Menu({required this.title,  required this.desc});

  //properti
  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Menu'),
          backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //menampilkan title yang dikirm
            Image.asset('assets/images/doge.jpg',height: 100, width: 200,),
            Text(title, style: TextStyle(fontSize: 25),),
            //menampilkan desc
            Text(desc),
            ElevatedButton(
              //Navigator.pop() digunakan untuk kembali ke halaman sebelumnya
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}