import 'package:clinic_app_rev1/Components/reusable_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:clinic_app_rev1/components/reusable_button_icon.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int btmNaviBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: CircleAvatar(
                child: Image.asset(
                  'images/hariz.png',
                ),
                radius: 40,
                backgroundColor: Colors.white,
              ),
            ),
            title: const ListTile(
              title: Text(
                'Hi Sayyid,',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text('Good <Insert Day>'),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0).copyWith(right: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Colors.white,
                      onPrimary: Colors.cyan[800],
                      elevation: 5),
                  onPressed: () {},
                  child: const Icon(
                    Icons.notifications_active,
                  ),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                // borderRadius: BorderRadius.all(Radius.circular(32.0)),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText:
                                  'Search health issue, doctor, topics...',
                              hintStyle: TextStyle(color: Colors.grey),
                              // border: OutlineInputBorder(),
                            ),
                          ),
                          trailing: TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: const Size.square(20),
                              primary: Colors.white,
                              backgroundColor: Colors.cyan[800],
                            ),
                            onPressed: () {},
                            child: const Icon(
                              Icons.filter_list,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'CURRENT APPOINTMENT',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ReusableButton(
                      title: 'No appointment today..',
                      height: 30,
                      boxColor: Colors.cyan[100],
                    ), //search bar
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'How can we help you?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ), //text widget
                    SizedBox(
                      height: 120,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ReusableButtonIcon(
                            icon: Icons.chat,
                            iconColor: Colors.blue,
                            iconSize: 35,
                            width: 120,
                            title: 'Symptom Bot',
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ReusableButtonIcon(
                            icon: Icons.event_note,
                            iconColor: Colors.teal,
                            iconSize: 35,
                            title: 'Booking',
                            width: 120,
                            onTap: () {
                              // Navigator.pushNamed(context, BookingScreen.id);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ReusableButtonIcon(
                            icon: Icons.medical_services,
                            iconColor: Colors.orangeAccent,
                            iconSize: 35,
                            title: 'Prescription',
                            width: 120,
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ReusableButtonIcon(
                            icon: Icons.payment,
                            iconColor: Colors.yellow[400],
                            iconSize: 35,
                            title: 'Billing',
                            width: 120,
                            onTap: () {},
                          ),
                        ),
                      ]),
                    ), //row scrollview
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See all',
                                style: TextStyle(color: Colors.blue[900]),
                              ))
                        ],
                      ),
                    ), //text widget
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.all(5.0).copyWith(right: 0),
                              child: ReusableButtonIcon(
                                boxColor: Colors.blue,
                                width: 180,
                                height: 200,
                                icon: Icons.print,
                                iconColor: Colors.white,
                                iconSize: 80,
                                title: 'Cardiology',
                                textColor: Colors.white,
                                onTap: () {},
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(5.0).copyWith(right: 0),
                              child: const ReusableButtonIcon(
                                boxColor: Colors.deepOrangeAccent,
                                width: 180,
                                height: 200,
                                icon: Icons.history_edu,
                                iconColor: Colors.white,
                                iconSize: 80,
                                title: 'Pulmonology',
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.all(5.0).copyWith(right: 0),
                              child: ReusableButtonIcon(
                                boxColor: Colors.lightGreen[600],
                                width: 180,
                                height: 200,
                                icon: Icons.animation,
                                iconColor: Colors.white,
                                iconSize: 80,
                                title: 'Dermatology',
                                textColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.all(5.0).copyWith(right: 0),
                              child: ReusableButtonIcon(
                                boxColor: Colors.purple[600],
                                width: 180,
                                height: 200,
                                icon: Icons.emoji_people,
                                iconColor: Colors.white,
                                iconSize: 80,
                                title: 'Psychiatrist',
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ), //bottom scrollview
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: btmNaviBarIndex,
            onTap: (index) {
              setState(() {
                btmNaviBarIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: 'New',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Member',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.cyan[800],
          ),
        ),
      ),
    );
  }
}
