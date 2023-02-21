import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WidgetPizza extends StatelessWidget {
  const WidgetPizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Center(
              child: Text("Develop's Pizzas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
          actions: [
            ElevatedButton.icon(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: const Color.fromRGBO(162, 240, 216, 1),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0)),
                // ignore: prefer_const_constructors
                icon: Center(
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 25,
                  ),
                ),
                label: const Text('')),
          ],
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(30),
              children: <Widget>[
                Container(
                    //margin: const EdgeInsets.all(14),
                    height: 50,
                    color: const Color.fromRGBO(230, 241, 235, 1),
                    child: Column(children: const <Widget>[
                      Text('Pepperoni Pizza',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19,
                              fontWeight: FontWeight.bold)),
                      Text('Hot pizza with pepper',
                          style: TextStyle(
                              color: Color.fromARGB(255, 183, 183, 183),
                              fontSize: 19,
                              fontWeight: FontWeight.bold)),
                    ])),
                Container(
                  height: 18,
                  color: const Color.fromRGBO(230, 241, 235, 1),
                ),
                Container(
                  height: 220,
                  color: const Color.fromRGBO(230, 241, 235, 1),
                  child: const Center(
                      child: Image(
                          image: AssetImage('lib/assets/images/pizza-r.png'))),
                ),
                Container(
                  height: 30,
                  color: const Color.fromRGBO(230, 241, 235, 1),
                ),
                Container(
                    height: 50,
                    color: const Color.fromRGBO(230, 241, 235, 1),
                    child: Column(children: const <Widget>[
                      Text('Made by',
                          style: TextStyle(
                              color: Color.fromARGB(255, 183, 183, 183),
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      Text('Erika Rivas',
                          style: TextStyle(
                              color: Color.fromARGB(255, 183, 183, 183),
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Sizes',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CuadritoS(
                        color: Colors.blueAccent,
                      ),
                      const CuadritoM(color: Color.fromRGBO(255, 193, 7, 1)),
                      const CuadritoL(color: Colors.pinkAccent),
                      const CuadritoXL(
                          color: Color.fromARGB(255, 174, 206, 123)),
                      const Padding(padding: EdgeInsets.all(5.0))
                    ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Ingredients',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ]),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Tomatoe(
                        color: Colors.blueAccent,
                      ),
                      const Avocado(color: Color.fromRGBO(255, 193, 7, 1)),
                      const Pepper(color: Color.fromRGBO(255, 193, 7, 1)),
                      const Onion(color: Colors.white)
                    ]),
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(231, 241, 236, 1)),
                              onPressed: (() {}),
                              child: const Text(
                                'Buy now',
                                style: TextStyle(
                                    color: Color.fromRGBO(40, 95, 80, 1),
                                    fontSize: 16),
                              )),
                        )
                      ]),
                )
              ],
            )));
  }
}

class CuadritoS extends StatelessWidget {
  final Color color;
  const CuadritoS({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructor
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        child: const Text(
          "S",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

class CuadritoM extends StatelessWidget {
  final Color color;
  const CuadritoM({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
              width: 0.01, color: const Color.fromARGB(255, 255, 255, 255)),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        child: const Text(
          "M",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

class CuadritoL extends StatelessWidget {
  final Color color;
  const CuadritoL({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        child: const Text(
          "L",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

class CuadritoXL extends StatelessWidget {
  final Color color;
  const CuadritoXL({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        child: const Text(
          "XL",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}

class Tomatoe extends StatelessWidget {
  final Color color;
  const Tomatoe({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Image(
          height: 30,
          width: 30,
          image: const AssetImage('lib/assets/images/tomatoe-r.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class Avocado extends StatelessWidget {
  final Color color;
  const Avocado({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Image(
          height: 30,
          width: 30,
          image: const AssetImage('lib/assets/images/avocado-r.png'),
        ),
      ),
    );
  }
}

class Pepper extends StatelessWidget {
  final Color color;
  const Pepper({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
              width: 0.01, color: const Color.fromARGB(255, 255, 255, 255)),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Image(
          height: 30,
          width: 30,
          image: const AssetImage('lib/assets/images/pepper-r.png'),
        ),
      ),
    );
  }
}

class Onion extends StatelessWidget {
  final Color color;
  const Onion({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Image(
          width: 30,
          height: 30,
          image: const AssetImage('lib/assets/images/onion-r.png'),
        ),
      ),
    );
  }
}
