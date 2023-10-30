// ignore_for_file: unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:publicgovpr/AboutUsPage.dart';
import 'package:publicgovpr/ChangePassPage.dart';
import 'package:publicgovpr/ContactUsPage.dart';
import 'package:publicgovpr/UserProfilePage.dart';
import 'package:publicgovpr/pages/Job_screen.dart';
import 'package:publicgovpr/pages/FilePage.dart';
import 'package:publicgovpr/pages/ScannerPage.dart';
import 'package:publicgovpr/services/firebase_services.dart';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  int _currentIndex = 0; // Keep track of the current tab index

  final user = FirebaseAuth.instance.currentUser;
  List catNames = [
    "category",
    "Classes",
    "Free Courses",
    "BookStore",
    "Live Courses",
    "LeaderBoard",
  ];

  List<Color> catColors = [
    Color(0XFFFFCF2F),
    Color(0XFF6FE08D),
    Color(0XFF61BDFD),
    Color(0XFFFC7F7F),
    Color(0XFFCB84FB),
    Color(0XFF78E667),
  ];

  List<Icon> catIcons = [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];

  List imgList = [
    "bank",
    "DriverLicence",
    "mcqs",
    "jobs",
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(8),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(8),
                        ),
                        child: FirebaseAuth.instance.currentUser != null &&
                                FirebaseAuth.instance.currentUser
                                        ?.providerData[0].providerId ==
                                    'google.com'
                            ? Image.network(
                                FirebaseAuth.instance.currentUser?.photoURL ??
                                    '', // Use an empty string as a fallback if photoURL is null
                                fit: BoxFit.cover,
                                width: 80,
                                height: 80,
                              )
                            : Center(
                                child: Text('None'),
                              ),
                      ),
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
                    const SizedBox(height: 0),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle_sharp,
                                  color: Colors.green, // Red tick icon
                                  size: 20,
                                ),
                                SizedBox(
                                    width:
                                        5), // Add some spacing between the icon and text
                                Column(
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Text(
                                          user!.email.toString(),
                                          style: TextStyle(
                                            color: Color(0xFFFFECEC),
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
            Spacer(), // This will push the "Logout" section to the bottom
            Container(
              margin: EdgeInsets.only(
                bottom: 0,
                top: 220,
              ),
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xFF2502C2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                ),
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
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    await FirebaseServices().signOut();
                  },
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Container(
                          height: 50,
                          width: 500,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/logomain.png"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 10, bottom: 10, right: 15),
            decoration: BoxDecoration(
              color: Color(0xFF2502C2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/company_logo-head.png"),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add your notifications onPressed event here
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          "Hi,",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            wordSpacing: 2,
                            color: Color(0xFF0BD800),
                          ),
                        ),
                      ),
                      Text(
                        user!.displayName.toString(),
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          wordSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 6, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search .....",
                      hintStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 226, 226),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.builder(
                      itemCount: catNames.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: catColors[index],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "OverView",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 78, 0, 222),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JobVacency(imgList[index]),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/${imgList[index]}.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              " Detail View",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF001AFF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: 'Scanner'),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: 'File'),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

Widget _currentIndex(int index) {
  switch (index) {
    case 0:
      return DashboardHome();
    case 1:
      return ScannerPage();
    case 2:
      return FilePage();
    default:
      return FilePage();
  }
}
