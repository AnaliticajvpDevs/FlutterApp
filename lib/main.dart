import 'package:flutter/material.dart';
import 'page2.dart';

String url =
    'https://blogger.googleusercontent.com/img/a/AVvXsEgaRDmsP9k33RIP5abv2rb6WpzGCJr86bkNfLrUQHA4bgprRcsMPPuy7IN-2PYHWLuvZSrIQchzOUXlYQsRPFqmkG8zT-IbMN3KYoYQVTUV2JD0H_Cp5zA10-I0jMb3K22pUlfYR0o2kosJ_7tJjyX0m4HLDi-Cb8KluQ3xMzqv5paxCu7NsYmhCs9r=w640-h486';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice",
      home: Start(),
    );
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => StartState();
}

class StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget();
  }
}

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Moonknight",
            style: TextStyle(fontFamily: 'Over There'),
          )),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover,
              opacity: 0.5),
        ),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          const SizedBox(
            height: 30,
          ),
          Center(child: Title()),
          const SizedBox(height: 130),
          User(),
          Pass(),
          BotonEnt(),
          const SizedBox(height: 30),
          FlatButton(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            color: Colors.black54,
              child: const Text('navigate', style: TextStyle(color: Colors.white, fontSize: 15),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Page2()));
              })
        ]),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Title() {
  return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: const Text(
        "Fist of Vengeance",
        style: TextStyle(
            color: Colors.black54,
            fontFamily: 'Over There',
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ));
}

// ignore: non_constant_identifier_names
Widget User() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
        decoration: InputDecoration(
            hintText: "Usuario", fillColor: Colors.white, filled: true)),
  );
}

// ignore: non_constant_identifier_names
Widget Pass() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Contraseña", fillColor: Colors.white, filled: true)),
  );
}

// ignore: non_constant_identifier_names
Widget BotonEnt() {
  return FlatButton(
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      onPressed: () {
        // ignore: avoid_print
        print('MoonKnight');
      },
      child: const Text("Enter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          )));
}
