import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PermissionStatus status;
  late PermissionStatus status1;
  late PermissionStatus status2;
  late PermissionStatus status3;
  late PermissionStatus status4;
  late PermissionStatus status5;
  late PermissionStatus status6;
  late PermissionStatus status7;

  String? text;
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? text5;
  String? text6;
  String? text7;

  IconData? myIcon;
  IconData? myIcon1;
  IconData? myIcon2;
  IconData? myIcon3;
  IconData? myIcon4;
  IconData? myIcon5;
  IconData? myIcon6;
  IconData? myIcon7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permissions"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            setState(() {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text"),
                              Icon(myIcon,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text1"),
                              Icon(myIcon1,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text2"),
                              Icon(myIcon2,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text3"),
                              Icon(myIcon3,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text4"),
                              Icon(myIcon4,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text5"),
                              Icon(myIcon5,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text6"),
                              Icon(myIcon6,size: 25),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("$text7"),
                              Icon(myIcon7,size: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            });
          },
          child: const Icon(Icons.add_alert),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() async {
                  await openAppSettings();
                });
              },
              child: const Icon(Icons.settings, color: Colors.white, size: 30)),
          const SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status = await Permission.camera.request();
                if (status.isGranted) {
                  text = "Camera Permission is granted";
                  myIcon = Icons.camera_alt_outlined;
                } else {
                  text = "Camera Permission is denied";
                  myIcon = Icons.cancel_outlined;
                }
              },
              child: const Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status1 = await Permission.location.request();
                if (status1.isGranted) {
                  text1 = "Location Permission is granted";
                  myIcon1 = Icons.location_on_sharp;
                } else {
                  text1 = "Location Permission is denied";
                  myIcon1 = Icons.location_disabled;
                }
              },
              child: const Text("Location"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status2 = await Permission.calendar.request();
                if (status2.isGranted) {
                  text2 = "Calender Permission is granted";
                  myIcon2 = Icons.calendar_month_outlined;
                } else {
                  text2 = "Calender Permission is denied";
                  myIcon2 = Icons.cancel_outlined;
                }
              },
              child: const Text("Calender"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status3 =
                    await Permission.microphone.request();
                if (status3.isGranted) {
                  text3 = "Microphone Permission is granted";
                  myIcon3 = Icons.mic_sharp;
                } else {
                  text3 = "Microphone Permission is denied";
                  myIcon3 = Icons.mic_off_sharp;
                }
              },
              child: const Text("Microphone"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status4 = await Permission.sms.request();
                if (status4.isGranted) {
                  text4 = "SMS Permission is granted";
                  myIcon4 = Icons.sms;
                } else {
                  text4 = "SMS Permission is denied";
                  myIcon4 = Icons.sms_failed_outlined;
                }
              },
              child: const Text("SMS"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status5 = await Permission.phone.request();
                if (status5.isGranted) {
                  text5 = "Phone Permission is granted";
                  myIcon5 = Icons.call;
                } else {
                  text5 = "Phone Permission is denied";
                  myIcon5 = Icons.call_end;
                }
              },
              child: const Text("Phone"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status6 = await Permission.storage.request();
                if (status6.isGranted) {
                  text6 = "Storage Permission is granted";
                  myIcon6 = Icons.done_all;
                } else {
                  text6 = "Storage Permission is denied";
                  myIcon6 = Icons.cancel;
                }
              },
              child: const Text("Storage"),
            ),
            ElevatedButton(
              onPressed: () async {
                PermissionStatus status7 = await Permission.contacts.request();
                if (status7.isGranted) {
                  text7 = "Contacts Permission is granted";
                  myIcon7 = Icons.done_all;
                } else {
                  text7 = "Contacts Permission is denied";
                  myIcon7 = Icons.cancel;
                }
              },
              child: const Text("Contacts"),
            ),
          ],
        ),
      ),
    );
  }
}
