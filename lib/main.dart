import 'package:flutter/material.dart';

void main() {
  runApp(bascketball());
}

class bascketball extends StatefulWidget {
  @override
  State<bascketball> createState() => _bascketballState();
}

class _bascketballState extends State<bascketball> {
  int _teampointsA = 0;
  int _teampointsB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Team A",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            _teampointsA.toString(),
                            style: TextStyle(
                                fontSize: 150, fontWeight: FontWeight.w600),
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              setState(() {
                                _teampointsA += 1;
                              }),
                            },
                            child: Text(
                              'add one point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(160, 70)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.orange)),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                {setState(() {}), _teampointsA += 2},
                            child: Text(
                              'add two point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(160, 70)),
                          ),
                          ElevatedButton(
                              onPressed: () => {
                                    setState(() => {_teampointsA += 3})
                                  },
                              child: Text(
                                'add three point',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  fixedSize: Size(160, 70))),
                        ]),
                    VerticalDivider(
                      thickness: 3,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Team B",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            _teampointsB.toString(),
                            style: TextStyle(
                                fontSize: 150, fontWeight: FontWeight.w600),
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              setState(() => {_teampointsB += 1})
                            },
                            child: Text(
                              'add one point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(160, 70)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.orange)),
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              setState(() => {_teampointsB += 2})
                            },
                            child: Text(
                              'add two point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(160, 70)),
                          ),
                          ElevatedButton(
                              onPressed: () => {
                                    setState(() => {_teampointsB += 3})
                                  },
                              child: Text(
                                'add three point',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  fixedSize: Size(160, 70))),
                        ]),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(100),
                child: ElevatedButton(
                  onPressed: () => {
                    setState(() => {_teampointsA = 0, _teampointsB = 0})
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 70), backgroundColor: Colors.orange),
                ))
          ],
        ),
      ),
    );
  }
}
