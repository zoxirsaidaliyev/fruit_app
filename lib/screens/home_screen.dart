import 'package:flutter/material.dart';
import 'package:fruit_app/info/info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool onTap = true;
  bool onTap1 = false;
  bool onTap2 = false;
  bool onTap3 = false;
  @override
  Widget build(BuildContext context) {
    final ism = ModalRoute.of(context)!.settings.arguments as String;
    final medata = info;
    final mydata = infoo;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 30,
                  ),
                  child: Image.asset(
                    'img/vektor.png',
                  ),
                ),
                SizedBox(
                  width: 280,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Icon(
                        Icons.shopping_basket_sharp,
                        color: Color(0xFFFFA451),
                      ),
                    ),
                    Text(
                      'My basket',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 100,
                left: 20,
              ),
              child: Text(
                "Hello ${ism} , What fruit salad combo do you want today ?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    prefixIcon: Visibility(
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Search for fruit salat and combo',
                    icon: Image.asset('img/icon.png'),
                    fillColor: Color(0xFFF3F4F9)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Recommended Combo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: mydata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      width: 170,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0C202020),
                            blurRadius: 60,
                            offset: Offset(0, 30),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 100,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  mydata[index]['isSelect'] = !mydata[index]['isSelect'];
                                });
                              },
                              icon: Icon(
                                mydata[index]['isSelect'] ? Icons.favorite : Icons.favorite_outline,
                                color: Color(0xFFFFA451),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Image.asset(mydata[index]['img']),
                          ),
                          Text(
                            mydata[index]['text'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('img/N.png'),
                              Text(
                                mydata[index]['price'],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFFFA451),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '5', arguments: mydata[index]);
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Color(0xFFFFA451),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onTap = !onTap;
                      });
                    },
                    child: Text(
                      'Hottest',
                      style: TextStyle(
                        fontSize: onTap ? 20 : 15,
                        color: Colors.black,
                        fontWeight: onTap ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onTap1 = !onTap1;
                      });
                    },
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: onTap1 ? 20 : 15,
                        color: Colors.black,
                        fontWeight: onTap1 ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onTap2 = !onTap2;
                      });
                    },
                    child: Text(
                      'New Combo',
                      style: TextStyle(
                        fontSize: onTap2 ? 20 : 15,
                        color: Colors.black,
                        fontWeight: onTap2 ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        onTap3 = !onTap3;
                      });
                    },
                    child: Text(
                      'Top',
                      style: TextStyle(
                        fontSize: onTap3 ? 20 : 15,
                        color: Colors.black,
                        fontWeight: onTap3 ? FontWeight.w700 : FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: medata.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '5', arguments: medata[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 140,
                        height: 150,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    medata[index]['isSelect1'] = !medata[index]['isSelect1'];
                                  });
                                },
                                icon: Icon(
                                  medata[index]['isSelect1'] ? Icons.favorite : Icons.favorite_outline,
                                  color: Color(0xFFFFA451),
                                ),
                              ),
                            ),
                            Image.asset(medata[index]['img']),
                            Text(
                              medata[index]['text'],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('img/N.png'),
                                Text(
                                  medata[index]['price'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFFFA451),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Color(0xFFFFA451),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
