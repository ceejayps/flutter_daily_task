// ignore_for_file: camel_case_types

import 'package:banking_app_2/container/pages/homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pin extends StatefulWidget {
  const pin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<pin> createState() => _pin();
}

class _pin extends State<pin> {
  Color typed = Colors.white;
  Color empty = Colors.white38;
  bool isWrong = false;
  String userPin = "1234";
  List inputPin = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 106, 90, 217),
              Color.fromARGB(255, 68, 48, 179)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            leading: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.transparent,
            title: const Text(''),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Enter the PIN",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? const Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.isNotEmpty
                                          ? const Color.fromARGB(
                                              255, 255, 255, 255)
                                          : const Color.fromARGB(
                                              0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? const Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 2
                                          ? const Color.fromARGB(
                                              255, 255, 255, 255)
                                          : const Color.fromARGB(
                                              0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? const Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 3
                                          ? const Color.fromARGB(
                                              255, 255, 255, 255)
                                          : const Color.fromARGB(
                                              0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? const Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 4
                                          ? const Color.fromARGB(
                                              255, 255, 255, 255)
                                          : const Color.fromARGB(
                                              0, 255, 254, 254),
                                ))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? const Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.isEmpty
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? const Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 1
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? const Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 2
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? const Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 3
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("1");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("2");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("3");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("4");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("5");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("6");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("7");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("8");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("9");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            ))
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.isNotEmpty) {
                                  inputPin.removeLast();
                                  isWrong = false;
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                  child: Icon(
                                Icons.backspace,
                                color: Colors.white,
                              )),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("0");
                                }
                              });

                              if (kDebugMode) {
                                print(inputPin);
                              }
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                              height: 40,
                              width: 20,
                            )),
                        const SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        TextButton(
                            onPressed: inputPin.length == 4
                                ? () {
                                    if (userPin != inputPin.join()) {
                                      setState(() {
                                        isWrong = true;
                                      });
                                      HapticFeedback.heavyImpact();
                                      if (kDebugMode) {
                                        print(["user pin ", userPin.split('')]);
                                      }
                                      if (kDebugMode) {
                                        print(["input pin ", inputPin.join()]);
                                      }
                                      if (kDebugMode) {
                                        print(isWrong);
                                      }
                                    } else {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const homepage()));
                                    }
                                  }
                                : null,
                            child: SizedBox(
                              child: Center(
                                  child: Icon(Icons.check,
                                      color: inputPin.length == 4
                                          ? Colors.white
                                          : const Color.fromARGB(
                                              106, 255, 255, 255))),
                              height: 40,
                              width: 20,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: null,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
