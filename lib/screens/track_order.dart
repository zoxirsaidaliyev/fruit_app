import 'package:flutter/material.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({super.key});

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 400,
            height: 150,
            color: Color(0xFF0FFFFA451),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 80,
                    height: 32,
                    margin: EdgeInsets.all(20),
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
                  'Delivery status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
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
            leading: Container(
              width: 65,
              height: 64,
              decoration: ShapeDecoration(
                color: Color(0xFFFFFAEB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Image.asset('img/1.png'),
            ),
            title: Text(
              'Order Taken',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: Container(
              width: 24,
              height: 24,
              decoration: ShapeDecoration(
                color: Color(0xFF4CD964),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Image.asset('img/p.png'),
            ),
          ),
          SizedBox(
            height: 50,
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/56x56"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Image.asset('img/2.png'),
            ),
            title: Text(
              'Order Is Being Prepared',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            trailing: Container(
              width: 24,
              height: 24,
              decoration: ShapeDecoration(
                color: Color(0xFF4CD964),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Image.asset('img/p.png'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 50,
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(color: Color.fromARGB(255, 238, 208, 229)),
              child: Image.asset('img/3.png'),
            ),
            title: Text(
              'Order Is Being Prepared',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            subtitle: Text('Your delivery agent is coming'),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFFFFA451),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Image.asset('img/6.png'),
            ),
          ),
          SizedBox(
            height: 30,
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Image.asset('img/4.png'),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 30,
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 4,
                  width: 2,
                  margin: EdgeInsets.only(
                    right: 300,
                  ),
                  color: Color(0xFFFFA451),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 65,
              height: 64,
              decoration: ShapeDecoration(
                color: Color(0xFFF0FEF8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Container(
                width: 40,
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF4CD964),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Image.asset('img/7.png'),
              ),
            ),
            title: Text(
              'Order Received',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            trailing: Container(
              width: 40,
              height: 8,
              child: Stack(
                children: [
                  Positioned(
                    left: 32,
                    top: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFE2C8),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFE2C8),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFE2C8),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
