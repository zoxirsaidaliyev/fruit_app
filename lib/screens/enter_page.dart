import 'package:flutter/material.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 270,
                ),
                child: Image.asset('img/savat.png'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                  minimumSize: MaterialStatePropertyAll(Size(200, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ))),
              onPressed: () {
                Navigator.pushNamed(context, '2');
              },
              child: Text(
                'Fruit Hub',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ));
  }
}


//193 1478390
