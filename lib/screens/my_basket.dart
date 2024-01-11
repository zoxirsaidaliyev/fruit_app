import 'package:flutter/material.dart';

class MyBasketScreen extends StatefulWidget {
  const MyBasketScreen({super.key});

  @override
  State<MyBasketScreen> createState() => _MyBasketScreenState();
}

class _MyBasketScreenState extends State<MyBasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 170,
              width: 400,
              color: Color(0xFFFFA451),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 80,
                      height: 32,
                      margin: EdgeInsets.all(30),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                          Text('Go Back'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'My Basket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Image.asset('img/salat1.png'),
              title: Text(
                'Quinoa fruit salat ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '2 packs',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Text(
                "\$2000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset('img/salat2.png'),
              title: Text(
                'Melon fruit salat ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '2 packs',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Text(
                "\$2000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset('img/salat4.png'),
              title: Text(
                'Tropical fruit salat ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                '2 packs',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              trailing: Text(
                "\$2000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Image.asset('img/N1.png'),
                        ),
                        Text(
                          '6000',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(
                      200,
                      56,
                    )),
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFFFFA451),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Text(
                                      'Deleviry address',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      hintText: '10th avenue, Lekki, Lagos State',
                                      filled: true,
                                    ),
                                  ),
                                  Text(
                                    'Number we can call',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      filled: true,
                                      hintText: '9860090611784095',
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                  color: Color(0xFFFFA451),
                                                ),
                                              ),
                                            ),
                                            minimumSize: MaterialStatePropertyAll(
                                              Size(
                                                125,
                                                56,
                                              ),
                                            ),
                                            backgroundColor: MaterialStatePropertyAll(
                                              Colors.white,
                                            )),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '8');
                                        },
                                        child: Text(
                                          'Pay on Delivery',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFA451)),
                                        ),
                                      ),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                color: Color(0xFFFFA451),
                                              ),
                                            ),
                                          ),
                                          backgroundColor: MaterialStatePropertyAll(
                                            Colors.white,
                                          ),
                                          minimumSize: MaterialStatePropertyAll(
                                            Size(
                                              125,
                                              56,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return Container(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 20,
                                                      right: 30,
                                                      top: 20,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Text(
                                                          'Card Holders Name',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            filled: true,
                                                            hintText: 'Adolphus Chris',
                                                          ),
                                                        ),
                                                        Text(
                                                          'Card Number',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        TextField(
                                                          decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            filled: true,
                                                            hintText: '9860 4590 0609 1358',
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              'Date',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.w600,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            Text(
                                                              'CCV',
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.w600,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            SizedBox(
                                                              width: 125,
                                                              height: 50,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  filled: true,
                                                                  hintText: '10/30',
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 125,
                                                              height: 50,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  filled: true,
                                                                  hintText: 'xxxx',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: 400,
                                                          height: 96,
                                                          decoration: ShapeDecoration(
                                                            color: Color(0xFFFFA451),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.only(
                                                                topLeft: Radius.circular(24),
                                                                topRight: Radius.circular(24),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: ElevatedButton(
                                                              style: ButtonStyle(
                                                                backgroundColor: MaterialStatePropertyAll(Colors.white),
                                                                minimumSize: MaterialStatePropertyAll(
                                                                  Size(
                                                                    135,
                                                                    56,
                                                                  ),
                                                                ),
                                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                  ),
                                                                ),
                                                              ),
                                                              onPressed: () {
                                                                Navigator.pushNamed(context, '7');
                                                              },
                                                              child: Text(
                                                                'Complate Order',
                                                                style: TextStyle(
                                                                  color: Color(0xFFFFA451),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text(
                                          'Pay with Card',
                                          style: TextStyle(
                                            color: Color(0xFFFFA451),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
