import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isTouch = false;

  int number = 1;
  int sum = 2000;
  bool minus = false;
  bool plus = false;
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 330,
            width: 450,
            color: Color(0xFFFFA451),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 35,
                    right: 280,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 80,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(
                            'Go Back',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(arg['imgbig']),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: 398,
                height: 468,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        arg['text'],
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (number != 1) {
                                number--;
                                sum = sum - 2000;
                              }
                            });
                          },
                          icon: Image.asset('img/minus.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          number.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              number++;
                              sum = sum + sum;
                            });
                          },
                          icon: Image.asset('img/plus.png'),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Image.asset('img/N1.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          sum.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 50,
                      ),
                      child: Text(
                        'One Pack Contains',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                        top: 10,
                      ),
                      height: 2,
                      width: 150,
                      color: Color(0xFFFFA451),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        arg['Text'],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isTouch = !isTouch;
                              });
                            },
                            icon: Icon(
                              isTouch ? Icons.favorite : Icons.favorite_outline,
                              color: Color(0xFFFFA451),
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                            minimumSize: MaterialStatePropertyAll(
                              Size(220, 50),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '6');
                          },
                          child: Text('Add to Basket'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
