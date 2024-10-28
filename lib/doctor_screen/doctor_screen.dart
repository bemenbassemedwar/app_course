import 'package:app_course/doctor_screen/profileHeader.dart';
import 'package:app_course/doctor_screen/tileitem.dart';

import 'package:flutter/material.dart';

import 'button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 1, 92, 167),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
              title: const Center(
                child: Text(
                  'Doctor Profile ',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://img.freepik.com/premium-photo/close-up-man-lab-coat-po_1124848-133579.jpg?ga=GA1.1.1943672201.1718977881&semt=ais_hybrid',
                        height: 150,
                        width: 150,
                        
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const ProfileHeader()
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Dentist',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 209, 213, 236),
                      child: const Column(
                        children: [
                          TileItem(
                            icon: Icons.health_and_safety,
                            text: 'CleoPatra Hospital',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TileItem(
                            icon: Icons.timer,
                            text: '10 - 19',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TileItem(
                            icon: Icons.location_on_sharp,
                            text: '2 Gamma Street, Giza',
                          ),
                        ],
                      )),
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10),
                  child: Text(
                    'Contact Info',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 209, 213, 236),
                      child: const Column(
                        children: [
                          TileItem(
                            icon: Icons.email,
                            text: 'dr@6.com',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TileItem(
                            icon: Icons.phone,
                            text: '01032564823',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TileItem(
                            icon: Icons.phone,
                            text: '01125466125',
                          ),
                        ],
                      )),
                ),
                const button(
                  color: Colors.green,
                  text: 'Chat With Dr Sayed',
                ),
                const button(color: Colors.blue, text: 'Book On Appointment')
              ],
            )));
  }
}
