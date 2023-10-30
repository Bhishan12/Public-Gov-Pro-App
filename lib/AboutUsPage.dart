import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  AboutUsPage({super.key});

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0xFF2502C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "About Us",
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
                  alignment: Alignment.centerLeft,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
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
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
              // White Section
              const SizedBox(height: 15),
              Container(
                color: Colors.white, // TextFormField Background Color
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(175, 95, 95, 95),
                      width: 2,
                    ),
                    color: Color.fromARGB(0, 224, 224, 224),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                'Services',
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
                      const SizedBox(height: 5),
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
                                top: 5,
                                bottom: 10,
                                left: 8,
                                right: 8,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '   Welcome,\nto Public Government Pro App.\n      we help people interaction With our\n  Goverment and poblic secter Work easier.\n   with us you know everything about gov.\nprivate news and jobs listed in our countary. ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 127),
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'We Help People to get Educated ?',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 108, 98, 0),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 0,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          '1. How to User banking App\'s.',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 108, 98, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '2. Filling Form Online proper  ',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 108, 98, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '3. Video Guidance to fill Form ',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 108, 98, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '4. Get Notification on New Job',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 108, 98, 0),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
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
              const SizedBox(height: 218),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  top: 45,
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
