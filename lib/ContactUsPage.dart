import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0xFF2502C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Blue Section
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2502C2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 5),
                          child: Container(
                            height: 80,
                            width: 415,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/company_logo.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // White Section
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromARGB(175, 95, 95, 95),
                    width: 2,
                  ),
                  color: Color.fromARGB(0, 224, 224, 224),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 8, 0, 255),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                'Contact Us On ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 126, 92, 92),
                                  fontSize: 21,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 51, 0, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 201, 197, 197),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 12,
                                right: 12,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.email, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    'Support.Publicgovpr@gov.com.in',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 201, 197, 197),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 20,
                                right: 20,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    '+91-9728161275 / 9819931223',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 201, 197, 197),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.message, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    'What\'sApp',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 10,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 201, 197, 197),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.message, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    'Messenger',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 201, 197, 197),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.message, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    'Viber',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 8, 0, 255),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                'Leave Your Message',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 126, 92, 92),
                                  fontSize: 21,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 51, 0, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 1, 28, 128),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 12,
                                right: 12,
                              ),
                              child: Text(
                                'Send Message',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 8, 0, 255),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                '!! NOTE !!',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 126, 92, 92),
                                  fontSize: 21,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 51, 0, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 35,
                          right: 35,
                          bottom: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 201, 197, 197),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 12,
                                  right: 12,
                                ),
                                child: Text(
                                  '"If You have any Query please Feel Free to Contact Us"',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 127),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  top: 25,
                ),
                child: Container(
                  width: 600,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF2502C2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Power By :- flutter',
                          style: TextStyle(
                            color: Color(0xFFB5B4B4),
                            fontSize: 20,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
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
