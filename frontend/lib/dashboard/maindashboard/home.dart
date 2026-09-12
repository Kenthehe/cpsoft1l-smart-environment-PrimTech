import 'package:flutter/material.dart';
import 'package:frontend/dashboard/dashboardbox(home).dart';

class Dashboard extends StatefulWidget {
  const new({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //===DATA FROM THE USER(NAME)===//
  String name = 'Franz';
  //===POSITION===//
  String position = 'Senior Caregiver';
  //==NUMBEROFDOSES==//
  int medicine = 30;
  //==TIME==//
  String time = '3:00pm';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: SafeArea(
        //===TOP====//
        child: Column(
          children: [
            topbar(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Good Morning, $name',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '$position',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      color: Color.fromARGB(255, 18, 151, 0),
                    ),
                    onPressed: () {
                      print('Notification clicked!');
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    //===TODAYS DOSES===//
                    SizedBox(width: 5),
                    dashboardBox4(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$medicine', style: TextStyle(fontSize: 40)),
                          Text(
                            "Today's Doses",
                            style: TextStyle(letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),

                    //===Completed===//
                    SizedBox(width: 5),
                    dashboardBox4(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$medicine', style: TextStyle(fontSize: 40)),
                          Text('Completed', style: TextStyle(letterSpacing: 1)),
                        ],
                      ),
                    ),
                  ],
                ),

                //===PENDING===//
                Row(
                  children: [
                    //===pending===//
                    SizedBox(width: 5),
                    dashboardBox4(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$medicine', style: TextStyle(fontSize: 40)),
                          Text('Pending', style: TextStyle(letterSpacing: 1)),
                        ],
                      ),
                    ),

                    //===stock===//
                    SizedBox(width: 5),
                    dashboardBox4(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('$medicine', style: TextStyle(fontSize: 40)),
                          Text('Stock', style: TextStyle(letterSpacing: 1)),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                  child: Row(
                    children: [
                      Text(
                        'Next Schedule Dispensings',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                //==First Schedule==//
                Column(
                  children: [
                    schedule(
                      child: Row(
                        children: [
                          scheduleddispense(
                            child: Text(
                              '$time',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 13, 139, 97),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ), //sched dispense
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  'Mark',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Paracetamol',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //==SECOND==//
                Column(
                  children: [
                    schedule(
                      child: Row(
                        children: [
                          scheduleddispense(
                            child: Text(
                              '$time',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 13, 139, 97),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ), //sched dispense
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  'Mark',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Paracetamol',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //==THIRD==//
                Column(
                  children: [
                    schedule(
                      child: Row(
                        children: [
                          scheduleddispense(
                            child: Text(
                              '$time',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 13, 139, 97),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ), //sched dispense
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  'Mark',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'Paracetamol',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Active Cabine Alerts',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 80,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 202, 197),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 14, 14),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print('LOW STORAGE');
                          },
                        ),
                        SizedBox(width: 3),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                              child: Text(
                                'Compartment #4 IS LOW',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Paracetamol is Low. LAGYAN MO NA POTANGINA KA',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //==DASHBOARD==//
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
          ], //==MAINCHILDREN==//
        ),
      ),
    );
  }
}
