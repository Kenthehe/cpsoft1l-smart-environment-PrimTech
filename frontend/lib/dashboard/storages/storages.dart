import 'package:flutter/material.dart';

class Storage extends StatefulWidget {
  const new({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: BoxBorder.fromLTRB(
                        top: BorderSide(
                          color: const Color.fromARGB(255, 201, 200, 200),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(Icons.dashboard_rounded, size: 30),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                  print('DASHBOARD');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                              child: Text(
                                'Dashboard',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),

                        //==STORAGE==//
                        SizedBox(width: 27),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(Icons.sd_storage_rounded, size: 30),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/storage');
                                  print('STORAGE');
                                },
                              ),
                            ),
                            Text('Storage', style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        //==SCHEDULE==//
                        SizedBox(width: 27),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(Icons.schedule, size: 30),
                                onPressed: () {
                                  print('Schdeule');
                                },
                              ),
                            ),
                            Text('Schedule', style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        //==DISPENSING==//
                        SizedBox(width: 27),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(Icons.arrow_downward, size: 30),
                                onPressed: () {
                                  print('Dispensing');
                                },
                              ),
                            ),
                            Text('Dispensing', style: TextStyle(fontSize: 10)),
                          ],
                        ),

                        //==MORE==//
                        SizedBox(width: 27),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: IconButton(
                                icon: Icon(Icons.more_horiz, size: 30),
                                onPressed: () {
                                  print('More');
                                },
                              ),
                            ),
                            Text('More', style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
