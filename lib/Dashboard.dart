import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:publicgovpr/AboutUsPage.dart';
import 'package:publicgovpr/ChangePassPage.dart';
import 'package:publicgovpr/ContactUsPage.dart';
import 'package:publicgovpr/UserProfilePage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final user = FirebaseAuth.instance.currentUser;
  var height, width;
  List imgData = [
    "images/jobs.png",
    "images/bank.png",
    "images/Driving_licence.png",
    "images/bank.png",
    "images/bank.png",
    "images/bank.png",
  ];

  List titles = [
    "Jobs vacancy",
    "Bank service",
    "Driving Licence",
    "fhfgjghj",
    "about",
    "job",
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey, // Add a GlobalKey to the Scaffold
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 106, 255),
        title: Text("Public Gov Pro"),
      ),
      drawer: Drawer(
        // This is your sliding drawer from the left
        child: ListView(
          children: [
            Container(
              height: 200,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF2502C2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(8),
                            ),
                            image: DecorationImage(
                              image: AssetImage("images/logo.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            child: Text(
                              "WELCOME,",
                              style: TextStyle(
                                color: Color(0xFFF26D6D),
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle_sharp,
                              color: Colors.green, // Red tick icon
                              size: 25,
                            ),
                            SizedBox(
                                width:
                                    5), // Add some spacing between the icon and text
                            Column(
                              children: [
                                Text(
                                  user!.email.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 121, 46, 207),
                                    fontSize: 21,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 35,
                        color: Color(0xFF2502C2),
                      ), // Prefix icon
                      title: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UserProfilePage(), // Navigate to DashboardPage
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Icon(
                Icons.lock,
                size: 35,
                color: Color(0xFF2502C2),
              ), // Prefix icon
              title: Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ChangePassPage(), // Navigate to DashboardPage
                  ),
                );
              },
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Icon(
                Icons.info,
                size: 35,
                color: Color(0xFF2502C2),
              ), // Prefix icon
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AboutUsPage(), // Navigate to DashboardPage
                  ),
                );
              },
            ),
            const SizedBox(height: 5),
            ListTile(
              leading: Icon(
                Icons.contact_page,
                size: 35,
                color: Color(0xFF2502C2),
              ), // Prefix icon
              title: Text(
                "ContactUs",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ContactUsPage(), // Navigate to DashboardPage
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFF2502C2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    top: 313,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      left: 25,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.logout,
                        size: 35,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ), // Prefix icon
                      title: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                    ),
                  ),
                ),
              ],
            ),
            // Add more items as needed
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF2502C2),
          width: width,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: height * 0.15,
                width: width,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(children: [
                      Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Last Update : 28 Sep 2023",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54,
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 0,
                  ), // Add padding on all sides
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    height: height,
                    width: width,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 25,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: imgData.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              bottom: 2,
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 216, 208, 208),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      imgData[index],
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text(
                                      titles[index],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
