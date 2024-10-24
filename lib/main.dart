// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xff265ed7),
          centerTitle: true,
          title: Text("Doctor Profile", style: TextStyle(color: Colors.white)),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            First_Screen_Container1(),
            First_Screen_Container2(),
            First_Screen_Container3(),
            First_Screen_Button1("Chat with Dr. Mekha"),
            SizedBox(height: 10),
            First_Screen_Button2("Book an appointment"),
          ],
        ),
      ),
    );
  }
}

class First_Screen_Button2 extends StatelessWidget {
  const First_Screen_Button2(
    this.s, {
    super.key,
  });
  final String s;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xff265ed7), borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(Icons.chat , color: Colors.white,),
          Text(
            s,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class First_Screen_Button1 extends StatelessWidget {
  const First_Screen_Button1(
    this.s, {
    super.key,
  });
  final String s;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xff4cb050), borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            s,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class First_Screen_Container3 extends StatelessWidget {
  const First_Screen_Container3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Info",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          First_Screen_Container3_BoxInfo(),
        ],
      ),
    );
  }
}

class First_Screen_Container2 extends StatelessWidget {
  const First_Screen_Container2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text("Professor Of Eye Special - Former Head of",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              )),
          Text("Department of Eye Special , Cairo Univerity",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              )),
          SizedBox(
            height: 5,
          ),
          First_Screen_Container2_BoxInfo(),
          Divider(
            thickness: 1,
            indent: 30,
            endIndent: 30,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class First_Screen_Container2_BoxInfo extends StatelessWidget {
  const First_Screen_Container2_BoxInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 175,
        decoration: BoxDecoration(
            color: Color(0xffe4f2fd), borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            SizedBox(height: 18),
            IconWithText_in_container2(
                Icons.local_hospital_rounded, "Cleopatra Hospital"),
            SizedBox(height: 18),
            IconWithText_in_container2(Icons.alarm, "10 - 19"),
            SizedBox(height: 18),
            IconWithText_in_container2(
                Icons.location_pin, "2 Gamaa street ,Giza"),
          ],
        ),
      ),
    );
  }
}

class First_Screen_Container3_BoxInfo extends StatelessWidget {
  const First_Screen_Container3_BoxInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 175,
        decoration: BoxDecoration(
            color: Color(0xffe4f2fd), borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            SizedBox(height: 18),
            IconWithText_in_container2(Icons.mail, "dr@6.com"),
            SizedBox(height: 18),
            IconWithText_in_container2(Icons.phone, "0123456789"),
            SizedBox(height: 18),
            IconWithText_in_container2(Icons.phone, "012279920"),
          ],
        ),
      ),
    );
  }
}

class IconWithText_in_container2 extends StatelessWidget {
  const IconWithText_in_container2(
    this.i,
    this.s, {
    super.key,
  });

  final IconData i;
  final String s;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 20)),
        Container(
          width: 33,
          height: 33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff2462d7),
          ),
          child: Icon(
            i,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Text(
          s,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

class First_Screen_Container1 extends StatelessWidget {
  const First_Screen_Container1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              "https://img.freepik.com/premium-vector/doctor-profile-with-medical-service-icon_617655-48.jpg",
              width: 125,
              height: 125,
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 200,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Dr. Mekha Morcos",
                style: TextStyle(
                    color: Color(0xff537bce),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Eye Special",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Row(children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(
                  "3",
                  style: TextStyle(
                      color: Color(0xff265ed7),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ]),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: [
                  ContainerPhone("1"),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  ContainerPhone("2"),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class ContainerPhone extends StatelessWidget {
  const ContainerPhone(
    this.numPh, {
    super.key,
    // required this.numPh
  });
  final String numPh;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: Color(0xffe4f2fd),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 8)),
            Icon(Icons.phone),
            Text(
              numPh,
              style: TextStyle(fontSize: 15),
            )
          ],
        ));
  }
}
