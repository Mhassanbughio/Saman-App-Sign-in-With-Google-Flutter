import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_login/login_page.dart';
//package:google_login/register.dart

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff154c79),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 45, 77, 1),
        title: Text(
          "Driver Registeration",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 85,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Hassan.png"))),
                  ),
                  Text(
                    "Muhammad Hassan",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.home),
              onTap: null,
            ),
            // ListTile(
            //   title: Text(
            //     "Setting",
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   leading: Icon(Icons.settings),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => settingpage()));
            //   },
            // ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.logout),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: Text("Enter the following detials",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),

                SizedBox(
                  height: 25,
                  width: 25,
                ),
                // ignore: prefer_const_constructors

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      icon: Icon(Icons.person, color: Colors.white),
                      hintText: "Enter your Name",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),

                SizedBox(
                  height: 20,
                  width: 20,
                ),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter Last Name",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                  width: 20,
                ),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ),

                SizedBox(height: 20, width: 20),

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "CINC Number",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fillColor: Colors.white,
                      icon: Icon(Icons.add_card, color: Colors.white)),
                ),

                SizedBox(height: 20, width: 20),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Driver License Number",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    icon: Icon(Icons.card_travel, color: Colors.white),
                  ),
                ),

                SizedBox(height: 20, width: 20),

                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Vehicle Registeration Number",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      contentPadding: const EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fillColor: Colors.white,
                      icon: Icon(Icons.directions_car, color: Colors.white)),
                ),
                SizedBox(height: 25, width: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 3, 51, 90)),
                        child: Text("Cancel",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                    SizedBox(width: 180),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 3, 51, 90)),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
