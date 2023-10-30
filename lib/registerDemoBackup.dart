import 'package:flutter/material.dart';
import 'package:publicgovpr/Dashboard.dart';
import 'package:publicgovpr/LoginPage.dart';
import 'package:intl/intl.dart'; // Import the intl package

class RegisterationPage extends StatefulWidget {
  RegisterationPage({super.key});

  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  final _nameController = TextEditingController();
  final _EmailController = TextEditingController();
  final _PhoneController = TextEditingController();
  final _DobController = TextEditingController();
  String _selectedGender = ''; // Track selected gender
  final _PasswordController = TextEditingController();
  final _ConformPasswordController = TextEditingController();
  final _AddressController = TextEditingController();
  bool _passwordVisible = false; // Track password visibility

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible; // Toggle password visibility
    });
  }

  void RegisterUser() {
    // Add your authentication logic here
    // For now, let's navigate to the DashboardPage on login button tap
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(), // Navigate to DashboardPage
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor:
                Color.fromARGB(255, 47, 0, 255), // Head color of date picker
            hintColor: Color.fromARGB(255, 47, 0, 255), // Color of buttons
            colorScheme:
                ColorScheme.light(primary: Color.fromARGB(255, 0, 13, 255)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        final formattedDate = DateFormat('dd-MMM-yyyy')
            .format(picked); // Format to month name (e.g., "Jun")
        _DobController.text = formattedDate;
      });
    }
  }

  void _showGenderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Male'),
                onTap: () {
                  setState(() {
                    _selectedGender = 'Male';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Female'),
                onTap: () {
                  setState(() {
                    _selectedGender = 'Female';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Other'),
                onTap: () {
                  setState(() {
                    _selectedGender = 'Other';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // Back Button
                    Positioned(
                      left: 10,
                      top: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
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
                          'REGISTRATION FORM',
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
              const SizedBox(height: 15),
              Container(
                color: Colors.white, // TextFormField Background Color
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          prefixIcon: Icon(Icons.person),
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
                        controller: _EmailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
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
                        controller: _PhoneController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller: _DobController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Date Of Birth',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => _showGenderDialog(context),
                      child: AbsorbPointer(
                        child: TextFormField(
                          controller:
                              TextEditingController(text: _selectedGender),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Gender',
                            prefixIcon: Icon(Icons.female_sharp),
                          ),
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
                        controller: _AddressController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Address',
                          prefixIcon: Icon(Icons.location_on),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _PasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: _togglePasswordVisibility,
                            child: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        obscureText: !_passwordVisible,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 0,
                        left: 0,
                      ),
                      child: TextFormField(
                        controller: _ConformPasswordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: _togglePasswordVisibility,
                            child: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        obscureText: !_passwordVisible,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 38, 255),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: GestureDetector(
                        onTap:
                            RegisterUser, // Call the SignUserIn function on tap
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Color.fromARGB(225, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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
