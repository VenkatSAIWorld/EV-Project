import 'package:ev_project/db_signup_page.dart';
import 'package:ev_project/slot/main_slot.dart';
import 'package:ev_project/slotbooking.dart';
import 'package:ev_project/user-host-signup_animatedcrossfade.dart';
import 'package:ev_project/chargingdetails.dart';
import 'package:ev_project/creditcard.dart';
import 'package:ev_project/crossfadesignups.dart';
import 'package:ev_project/data.dart';
import 'package:ev_project/history.dart';
import 'package:ev_project/host_signup.dart';
import 'package:ev_project/hosting.dart';
import 'package:ev_project/logout.dart';
import 'package:ev_project/payment.dart';
import 'package:ev_project/profilelist.dart';
import 'package:ev_project/refer.dart';
import 'package:ev_project/share.dart';
import 'package:ev_project/user_signup.dart';
import 'package:ev_project/userdetails.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/android.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      routes: {
        "/user": (content) => UserDetails(),
        "/chargingDetails": (content) => ChargingDetails(),
        "/hosting": (content) => Hosting(),
        "/payment": (content) => Payment(),
        "/history": (content) => History(),
        "/refer": (content) => Refer(),
        "/logout": (content) => Logout(),
        "/profile": (context) => Profile(),
        "/creditcard": (context) => CreditCard(),
        "/sharecharger": (context) => ShareCharger(),
        "/data": (context) => Data(),
        "/usersignup": (context) => UserSign(),
        "/hostsignup": (context) => HostSignUp(),
        "/userhostsignup": (context) => UserHostSignUp(),
        "/slotbooking": (context) => SlotBooking(),
        "/slots": (context) => mainSlot(),
        "/dbsignuppage": (context) => const DbSignUpForm(),
        "/dbsign": (context) => dbSignUp(),
      },
      home: Scaffold(body: EVCharging()),
    ),
  );
}

class EVCharging extends StatelessWidget {
  const EVCharging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var profileIndex = 3;
    // var hostingIndex = 2;
    List index = List.generate(3, (index) => index);
    return Scaffold(
        //appBar: AppBar(),
        body: Container(
          height: 800,
          padding: EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Image(
                  height: 75,
                  width: 75,
                  image: NetworkImage(
                      "https://newwebsite.lucrative.company/wp-content/uploads/2021/09/WhatsApp_Image_2021-08-30_at_10.25.35_AM-removebg-preview.png")),
              Center(
                  child: Text(
                "${TimeOfDay.now().hour} : ${TimeOfDay.now().minute < 10 ? '0${TimeOfDay.now().minute}' : '${TimeOfDay.now().minute}'}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )),
              Text(
                "Find a Charger Near You",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.green),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Find a charger for your EV  wherever you go."),
              Text("Join us"),
              SizedBox(
                height: 80,
              ),
              Center(
                  child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/user");
                },
                icon: Icon(
                  Icons.location_city,
                  color: Colors.green,
                ),
              )),
              Center(
                  child: Text("Find a charger for your EV  wherever you go.")),
              Center(child: Text("Join us")),
              SizedBox(
                height: 80,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/hosting");
                },
                icon: Icon(Icons.electric_bike),
                color: Colors.green,
              ),
              Center(child: Text("No more range anxiety")),
              SizedBox(
                height: 80,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/sharecharger");
                },
                icon: Icon(Icons.lock_clock),
                color: Colors.green,
              ),
              Center(child: Text("No more linging up to find a charger")),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/usersignup");
                  },
                  child: Text("Join our community"))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // mouseCursor: MouseCursor.defer,
          //showSelectedLabels: true,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.green),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.electric_car), label: "Guest"),
            BottomNavigationBarItem(
                icon: Icon(Icons.anchor_rounded), label: "Host"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page), label: "Profile")
          ],
          onTap: (currentIndex) {
            index[0] == currentIndex
                ? Navigator.pushNamed(context, "/user")
                : " ";
            index[1] == currentIndex
                ? Navigator.pushNamed(context, "/hosting")
                : " ";
            index[2] == currentIndex
                ? Navigator.pushNamed(context, "/profile")
                : " ";
          },
        )

        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.passthrough,
              children: [Icon(Icons.electric_car), Text("Guest")],
            ),
            SizedBox(
              width: 80,
            ),
            Stack(
              children: [Icon(Icons.anchor_rounded), Text("Host")],
            ),
            SizedBox(
              width: 80,
            ),
            Stack(
              children: [Icon(Icons.contact_page), Text("Profile")],
            ),
          ],
        ),
        */
        );
  }
}
