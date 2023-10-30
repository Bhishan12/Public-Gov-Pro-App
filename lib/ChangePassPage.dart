import 'package:flutter/material.dart';

class ChangePassPage extends StatefulWidget {
  ChangePassPage({Key? key}) : super(key: key);

  @override
  _ChangePassPageState createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();

  void _changePassword() {
    Navigator.pop(
        context); // Use Navigator.pop to go back to the previous screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0xFF2502C2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "change Password",
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
                          padding: const EdgeInsets.only(top: 15),
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
                        const SizedBox(height: 15),
                        Text(
                          'create new password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
              // White Section
              const SizedBox(height: 30),
              Container(
                color: Colors.white, // TextFormField Background Color
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _oldPasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Current Password',
                          prefixIcon: Icon(Icons.lock_open_rounded),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _newPasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'New password',
                          prefixIcon: Icon(Icons.lock_rounded),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _confirmNewPasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm New Password',
                          prefixIcon: Icon(Icons.lock_rounded),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 38, 255),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: GestureDetector(
                        onTap: _changePassword,
                        child: Center(
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                              color: Color.fromARGB(225, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
              const SizedBox(height: 150),
              Container(
                width: 600,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF2502C2),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Power By :',
                      style: TextStyle(
                        color: Color.fromARGB(255, 125, 125, 125),
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              left: 10,
                              right: 10,
                            ),
                            child: Text(
                              'Flutter App',
                              style: TextStyle(
                                color: Color.fromARGB(255, 125, 125, 125),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
