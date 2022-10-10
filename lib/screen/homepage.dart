import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("All Permission"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus camera = await Permission.camera.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$camera"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Camera",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus contact = await Permission.contacts.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$contact"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Contact",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus storage = await Permission.storage.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$storage"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Storage",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus sms = await Permission.sms.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$sms"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Sms",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus phone = await Permission.phone.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$phone"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Phone",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus calendar = await Permission.calendar.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$calendar"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Calendar",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus location = await Permission.location.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$location"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Location",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus microphone =
                    await Permission.microphone.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$microphone"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Microphone",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                primary: Colors.brown,
              ),
              onPressed: () async {
                PermissionStatus sensors = await Permission.sensors.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$sensors"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: const Text(
                "Sensors",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
