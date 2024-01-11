import 'package:flutter/material.dart';

class LetsGoScreen extends StatelessWidget {
  const LetsGoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            width: 400,
            color: Color(0xFFFFA451),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 110, left: 200),
                    child: Image.asset('img/maydacha.png'),
                  ),
                ),
                Center(
                  child: Image.asset('img/ooo.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Get The Freshest Fruit Salad Combo',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF27214D),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF5C577E),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
              backgroundColor: MaterialStatePropertyAll(
                Color(0xFFFFA451),
              ),
              minimumSize: MaterialStatePropertyAll(Size(330, 55)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '3');
            },
            child: Text(
              'Let\'s Continue',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
