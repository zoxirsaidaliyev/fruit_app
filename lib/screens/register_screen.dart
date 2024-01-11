import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 450,
              color: Color(0xFFFFA451),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 250),
                    child: Image.asset('img/maydacha.png'),
                  ),
                  Image.asset('img/aaa.png'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 100),
              child: Text(
                'What is your firstname ?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                expands: false,
                scribbleEnabled: false,
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                  )),
                  hintText: 'Tommy',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                minimumSize: MaterialStatePropertyAll(
                  Size(350, 52),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '4', arguments: name.text);
              },
              child: Text(
                'Start Ordering',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
