import 'package:clinic_app_rev1/Components/reusable_button.dart';
import 'package:clinic_app_rev1/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({Key? key}) : super(key: key);

  @override
  _UpdatesScreenState createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: Text(
                'List all the current promotion or update such as Covid-19 SOP',
                style: TextStyle(fontSize: 60),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Promo 1',
                          style: TextStyle(fontSize: 24),
                        ),
                        InkWell(
                          onTap: () {
                            print('promo 1 tapped');
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.blue[900],
                            size: 50,
                          ),
                        )
                      ],
                    ), //promo 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Promo 2',
                          style: TextStyle(fontSize: 24),
                        ),
                        InkWell(
                          onTap: () {
                            print('promo 2 tapped');
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.blue[900],
                            size: 50,
                          ),
                        )
                      ],
                    ), //promo 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Update 1',
                          style: TextStyle(fontSize: 24),
                        ),
                        InkWell(
                          onTap: () {
                            print('update 1 tapped');
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.blue[900],
                            size: 50,
                          ),
                        )
                      ],
                    ), //update 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableButton(
                          title: 'NEXT',
                          width: 100,
                          height: 50,
                          onTap: () {
                            print('next button tapped');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                        ),
                        Row(
                          children: [
                            Checkbox(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.black),
                                value: checkBoxValue,
                                onChanged: (value) {
                                  setState(() {
                                    checkBoxValue = value!;
                                  });
                                }),
                            const Text(
                              "Don't show this \nupdate again",
                            )
                          ],
                        )
                      ],
                    ), //next button + tick box
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
